--Check for any rows that have invalid groups (year, region, gender, workforce)
select 'intersectional' as table_name, count(*) as invalid_row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_hiring` 
where workforce is null or report_year is null or gender_us is null
union all
select 'non-intersectional', count(*) 
FROM `bigquery-public-data.google_dei.dar_non_intersectional_hiring` 
where workforce is null or report_year is null
union all
select 'regional non-intersectional', count(*) 
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_hiring` 
where workforce is null or report_year is null or region is null;
