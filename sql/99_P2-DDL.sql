
create schema if not exists `seis-732-508300.project_raw`;
create schema if not exists `seis-732-508300.project`;
create schema if not exists `seis-732-508300.project_curated`;

create or replace table `seis-732-508300.project_raw.intersectional_hiring`
(
  load_time TIMESTAMP NOT NULL,
  run_id int64 GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
  workforce string, 
  report_year int64 not null, 
  gender_us string, 
  race_asian float64, 
  race_black float64, 
  race_hispanic_latinx float64, 
  race_native_american float64, 
  race_white float64
);
create or replace table `seis-732-508300.project_curated.intersectional_hiring`
(
  run_id int64, 
  updated_date timestamp,
  workforce string, 
  report_year int64, 
  gender_us string, 
  race_asian float64, 
  race_black float64, 
  race_hispanic_latinx float64, 
  race_native_american float64, 
  race_white float64,
  race_asian_change float64, 
  race_black_change float64, 
  race_hispanic_latinx_change float64, 
  race_native_american_change float64, 
  race_white_change float64
);
