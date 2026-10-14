-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_attrition_index'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_attrition_index`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date
FROM `bigquery-public-data.google_dei.dar_intersectional_attrition_index`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_exits_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_exits_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_intersectional_exits_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_hiring'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_hiring`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_intersectional_hiring`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_intersectional_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_attrition_index'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_attrition_index`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_attrition_index`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_exits_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_exits_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_exits_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_hiring'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_hiring`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_hiring`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_represent'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_represent`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_represent`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_hiring'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_hiring`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_intersectional_hiring`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_intersectional_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_intersectional_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_intersectional_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_attrition_index'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_attrition_index`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_attrition_index`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_exits_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_exits_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_exits_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_hiring'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_hiring`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_hiring`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_non_intersectional_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_non_intersectional_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_non_intersectional_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_region_non_intersectional_attrition_index'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_attrition_index`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_attrition_index`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_region_non_intersectional_exits_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_exits_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_exits_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_region_non_intersectional_hiring'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_hiring`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_hiring`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_region_non_intersectional_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_region_non_intersectional_representation`;

-- Record the authorized objects and inspect their definitions.
SELECT column_name, data_type, is_nullable
FROM `bigquery-public-data.google_dei.INFORMATION_SCHEMA.COLUMNS`
WHERE table_name = 'dar_selfid_representation'
ORDER BY ordinal_position;

-- Establish basic scale without exporting row-level data.
SELECT COUNT(*) AS row_count
FROM `bigquery-public-data.google_dei.dar_selfid_representation`;

-- Test the time coverage, but there is no singular candidate identifier relevant to the idea.
SELECT
    MIN(report_year) AS earliest_date,
    MAX(report_year) AS latest_date    
FROM `bigquery-public-data.google_dei.dar_selfid_representation`;


