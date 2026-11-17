create procedure `seis-732-508300.project.check_intersectional_hiring_curated`()
begin
  begin
    select case when count(*)>0 then 1/0 else 0 end as check from `seis-732-508300.project_curated.intersectional_hiring`
    where 
    race_asian > 1 or
    race_black > 1 or
    race_hispanic_latinx > 1 or
    race_native_american > 1 or
    race_white > 1;
  Exception when error then
    select 'Invalid Hiring Rate Value: >100%' ;
  end
  ;
  begin
    select case when count(*)>0 then 1/0 else 0 end as check from `seis-732-508300.project_curated.intersectional_hiring`
    where workforce is null
    or report_year is null 
    or gender_us is null;
  Exception when error then
    select 'Invalid Pivot Column' ;
  end
  ;
end

call `seis-732-508300.project.check_intersectional_hiring_curated`()
