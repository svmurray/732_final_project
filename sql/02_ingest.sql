create or replace procedure `seis-732-508300.project.load_raw_intersectional_hiring` (run_year int64)
begin
  insert into `seis-732-508300.project_raw.intersectional_hiring`
  (load_time, workforce, report_year, gender_us, race_asian, race_black, race_hispanic_latinx, race_native_american, race_white)
  select current_timestamp() as load_time, workforce, report_year, gender_us, race_asian, race_black, race_hispanic_latinx, race_native_american, race_white
  from `bigquery-public-data.google_dei.dar_intersectional_hiring`
  where report_year <= run_year;
end;

call `seis-732-508300.project.load_raw_intersectional_hiring`(2018);
-- call `seis-732-508300.project.load_raw_intersectional_hiring`(2026);
