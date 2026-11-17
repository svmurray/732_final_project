
merge `seis-732-508300.project_curated.intersectional_hiring` c
using
(with latest_rows as 
  (select *
    from `seis-732-508300.project_raw.intersectional_hiring` c
    where load_time = (select max(load_time) from `seis-732-508300.project_raw.intersectional_hiring`)
    and load_time < (select max(load_time) from `seis-732-508300.project_curated.intersectional_hiring`)
    qualify row_number() over (partition by workforce, report_year, gender_us order by load_time, run_id desc) = 1 --run_id is an inherent final tiebreaker due to the identity constraint in the definition of the Raw table
    )
  select c.run_id, 
         current_timestamp as updated_date,
         c.workforce, 
         c.report_year, 
         c.gender_us, 
         c.race_asian, 
         c.race_black, 
         c.race_hispanic_latinx, 
         c.race_native_american, 
         c.race_white,
         c.race_asian / nullif(p.race_asian, 0) as race_asian_change, 
         c.race_black / nullif(p.race_black, 0) as race_black_change, 
         c.race_hispanic_latinx / nullif(p.race_hispanic_latinx, 0) as race_hispanic_latinx_change, 
         c.race_native_american / nullif(p.race_native_american, 0) as race_native_american_change, 
         c.race_white / nullif(p.race_white, 0) as race_white_change
         from latest_rows c 
         join latest_rows p on c.report_year-1 = p.report_year
          and c.workforce = p.workforce
          and c.gender_us = p.gender_us
         where c.report_year is not null and c.workforce is not null and c.gender_us is not null) n
          on c.report_year = n.report_year and c.workforce = n.workforce and c.gender_us = n.gender_us
  when matched then
  update set updated_date = n.updated_date,
             race_asian = n.race_asian,
             race_black = n.race_black,
             race_hispanic_latinx = n.race_hispanic_latinx,
             race_native_american = n.race_native_american,
             race_white = n.race_white,
             race_asian_change = n.race_asian_change,
             race_black_change = n.race_black_change,
             race_hispanic_latinx_change = n.race_hispanic_latinx_change,
             race_native_american_change = n.race_native_american_change,
             race_white_change = n.race_white_change
when not matched then insert row
;
