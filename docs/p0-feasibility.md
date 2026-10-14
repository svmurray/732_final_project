# Google DEI Hiring Trends
## Audience + Need

  - Specific Audience: **HR / Hiring Managers at Google** to **evaluate if their hiring and retention trends are producing differential outcomes** for specific groups of people according to self-identified demographic details.
  - A data product would help to track trends across demographic groups to see flag any internal warning sign by creating an easy way to see trends and track changes.
  - A useful product here would allow for the HR department to intervene and evaluate workplace culture for groups that have outlier values in turnover or hiring discrepancies regarding hostilities and bias.

## Consumption Artifact Design

The consumption object would be a dashboard consisting of various visualizations, like line charts exploring with filtering options, the below questions.
   - Are there any demographic groups (race or gender) that have an outlying high attrition rate?
   - Are there any demographic groups (race or gender) that have an outlying low hiring rate?
   - Are demographic hiring rates similar across different intersecionalities of the demographic groups (i.e. Black Women)?
   - Which department(s) have the lowest hiring rates of each demographic group, including intersectional groups?
     
## Source Information

  - Dataset: "Google's Diversity Annual Report Data" from **Google**
  - Source URL: https://console.cloud.google.com/marketplace/product/bigquery-public-datasets/google-diversity-annual-report?project=seis-732-508300
  - BigQuery Project & Dataset: **bigquery-public-data.google_dei**
  - None of the below dataset tables have true primary keys, but instead have composite keys that mirror the granularity of each table. Each of the `dar_intersectional_` tables are unique on the year-gendger-workforce level. The `dar_non_intersectinoal_tables` are unique on the year-workforce level, and the `dar_region` tables are unique on the workforce-year-region level. All of the tables are located in the US.
    - dar_intersectional_attrition_index
    - dar_intersectional_exits_representation
    - dar_intersectional_hiring
    - dar_intersectional_representation
    - dar_non_intersectional_attrition_index
    - dar_non_intersectional_exits_representation
    - dar_non_intersectional_hiring
    - dar_non_intersectional_representation
    - dar_region_non_intersectional_attrition_index
    - dar_region_non_intersectional_exits_representation
    - dar_region_non_intersectional_hiring
    - dar_region_non_intersectional_representation
    - dar_selfid_representation
  - Source is accessible in course environment. All queries in `00_feasibility.sql` have successfully been run in BigQuery
  - There are no known usage, attribution, or redistribution restrictions on this dataset
    
## Source Profile

| Table | Grain Definition | Row Count | Timespan | Keys | Important Fields | Null Characteristics | Refresh Behavior | Sensitivity/Aggregation Concerns |
| ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| dar_intersectional_attrition_index | One row holds the attrition index for a single report year for a workforce-gender, where gender is men or women, and the workforce options are [overall, tech, non-tech] | 30 |2018-2022 | No true primary key, surrogate key would consist of year-gender-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white | No known characteristics | No known refresh cadence | This table is pre-aggregated and indexed to 100 for the row, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_intersectional_exits_representation | One row holds the exits data for a single report year for a workforce-gender, where gender is men or women, and the workforce options are [overall, tech, non-tech] | 30 |2018-2022 | No true primary key, surrogate key would consist of year-gender-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_intersectional_hiring | One row holds the hiring information for a single report year for a workforce-gender, where gender is men or women, and the workforce options are [overall, tech, non-tech, leadership] | 64 | 2015-2022 | No true primary key, surrogate key would consist of year-gender-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_intersectional_representation | One row holds intersectional representation data for a single report year for a workforce-gender, where gender is men or women, and the workforce options are [overall, tech, non-tech, leadership] | 72 |2014-2022 | No true primary key, surrogate key would consist of year-gender-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_non_intersectional_attrition_index | One row holds the attrition index for a single report year for a given workforce, where workforce options are [overall, tech, non-tech] | 15 | 2018-2022 | No true primary key, surrogate key would consist of year-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | No known refresh cadence | This table is pre-aggregated and indexed to 100 for the row, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_non_intersectional_exits_representation | One row holds the exits representation for a single report year for a given workforce, where workforce options are [overall, tech, non-tech] | 15 | 2018-2022 | No true primary key, surrogate key would consist of year-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_non_intersectional_hiring | One row holds the hiring information for a single report year for a given workforce, where workforce options are [overall, tech, non-tech, leadership] | 32 | 2015-2022 | No true primary key, surrogate key would consist of year-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_non_intersectional_representation | One row holds the intersectional representation for a single report year for a given workforce, where workforce options are [overall, tech, non-tech, leadership] | 36 | 2014-2022 | No true primary key, surrogate key would consist of year-workforce | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_region_non_intersectional_attrition_index | One row holds the attrition index for a single report year for a workforce-region pair, from a region in [AMERICAS (non-US), APAC, EMEA], and the workforce options are [overall, tech, non-tech] | 18 |2021-2022 | No true primary key, surrogate key would consist of year-region-workforce | gender_women, gender_men | No known refresh cadence | This table is pre-aggregated and indexed to 100 for the row, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_region_non_intersectional_exits_representation | One row holds the exits data for a single report year for a workforce-region pair, from a region in [AMERICAS (non-US), APAC, EMEA], and the workforce options are [overall, tech, non-tech] | 18 | 2021-2022 | No true primary key, surrogate key would consist of year-region-workforce | gender_women, gender_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_region_non_intersectional_hiring | One row holds the hiring information for a single report year for a workforce-region pair, from a region in [AMERICAS (non-US), APAC, EMEA], and the workforce options are [overall, tech, non-tech, leadership] | 24 | 2021-2022 | No true primary key, surrogate key would consist of year-region-workforce | gender_women, gender_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_region_non_intersectional_representation | One row holds the intersectional representation for a single report year for a workforce-region pair, from a region in [AMERICAS (non-US), APAC, EMEA], and the workforce options are [overall, tech, non-tech, leadership] | 24 | 2021-2022 | No true primary key, surrogate key would consist of year-region-workforce | gender_women, gender_men | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
| dar_selfid_representation | One row holds the rate of identity representation for a single report year for a given self-identification, where the potential categories are [selfid_lgbtq, selfid_disability, selfid_military, selfid_nonbinary] | 16 | 2019-2022 | No true primary key, surrogate key would consist of year-identity | global | No known characteristics | No known refresh cadence | This table is pre-aggregated to percentages, so direct row-to-row comparison could be liable to skew based on the underlying sample sizes |
    
## Need-To-Source Fit

| Proposed Question | Needed Fields | Candidate Source Objects | Why the Source is Sufficient | Gap/Assumption to test in P1 |
| ---- | ---- | ---- | ---- | ---- |
| Are there any demographic groups (race or gender) that have an outlying high attrition rate? | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | dar_region_non_intersectional_attrition_index, dar_non_intersectional_attrition_index, dar_intersectional_attrition_index | Across the different source objects, the different categorical groups can be compared. The question is asked such that the pre-aggregation is looked at on a rate-level, mitigating the pre-aggregation concerns | Are the category groupings across years consisten enough for this analysis? |
| Are there any demographic groups (race or gender) that have an outlying low hiring rate? | race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | dar_region_non_intersectional_hiring, dar_non_intersectional_hiring, dar_intersectional_hiring | Across the different source objects, the different categorical groups can be compared. The question is asked such that the pre-aggregation is looked at on a rate-level, mitigating the pre-aggregation concerns | Are the category groupings across years consisten enough for this analysis? |
| Are demographic hiring rates similar across different intersecionalities of the demographic groups (i.e. Black Women)? | gender, race_asian, race_black, race_hispanic_latinx, race_native_american, race_white | dar_intersectional_hiring | Across the different source objects, the different categorical groups can be compared. The question is asked such that the pre-aggregation is looked at on a rate-level, mitigating the pre-aggregation concerns | Are the category groupings across years consisten enough for this analysis? |
| Which department(s) have the highest exit rates of each demographic group, including intersectional groups? | gender, race_asian, race_black, race_hispanic_latinx, race_native_american, race_white, gender_us_women, gender_us_men, gender_global_women, gender_global_men | dar_region_non_intersectional_exits_representation, dar_non_intersectional_exits_representation, dar_intersectional_exits_representation | Across the different source objects, the different categorical groups can be compared. The question is asked such that the pre-aggregation is looked at on a rate-level, mitigating the pre-aggregation concerns | Are the category groupings across years consisten enough for this analysis? |

## Feasibility Risks

| Risk | Known Evidence | Next Check | Potential Fallback |
| ---- | ---- | ---- | ---- |
| Insufficient Grain | Most of the data is already aggregated to rates or indexes (based at 100), so it may be difficult to apply scale and impossible to disaggregate data for novel analysis. | Is there little enough missing data across the tables such that each analysis could be done in relative terms? Is the data in `full_csv-latest-data-is-2023` sufficient to join on to adjust rates to raw values? | Apply analysis on each pre-aggregation, so that each question will be satisfied by a single table, and there won't be cross-table insights |
| No IDs | There are no primary key columns available in any of the tables that create uniqueness, so composite keys across years will need to be used | Are the keys consistent enough to be used as conformed dimensions, or do the workforce values change across time? | If workforce values are inconsistent, the documentation states that there are overall rows, and analysis will be shifted to be on the whole group rather than workforce-based grain |
| Static Data | The documentation shows that there should be data through either 2023 or 2024, each of which are called out, but querying the tables only show data through 2022 | Is the data pre-2021 robust enough to satisfy the analysis, so that 2022 can be viewed as the update change condition | Continue to move forward one year in time (t0 2020, then 2019 etc.) until both sides of that line have enough data to apply the analysis and change condition |

## First P1 Decision: 

Are the workforce values consistently applied across the history, so that they can be used as a conformed dimension for more granular analysis

## AI Disclaimer

No AI was used generating this proposal
