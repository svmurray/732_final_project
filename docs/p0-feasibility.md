1. __**Google DEI Hiring Trends**__
2. Audience + Need
  - Specific Audience: **HR / Hiring Managers at Google** to **evaluate if their hiring and retention trends are producing differential outcomes** for specific groups of people according to self-identified demographic details.
  - A data product would help to track trends across demographic groups to see flag any internal warning sign by creating an easy way to see trends and track changes.
  - A useful product here would allow for the HR department to intervene and evaluate workplace culture for groups that have outlier values in turnover or hiring discrepancies regarding hostilities and bias.

3. Describe the consumption artifact (likely a dashboard with 2-4 questions that should be answered)
   - Are there any demographic groups (race or gender) that have an outlying high attrition rate?
   - Are there any demographic groups (race or gender) that have an outlying low hiring rate?
   - Are demographic hiring rates similar across different intersecionalities of the demographic groups (i.e. Black Women)?
   - Which department(s) have the lowest hiring rates of each demographic group, including intersectional groups?
     
5. Source Information
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
    
5. Source Profile
  - Meaning of one row in each object
  - Current Row Count
  - Timespan coverage
  - Possible Keys, what they identify, and whether there are missing/duplicated values
  - Fields that will be used to support the questions
  - Null/Duplicate/Type/Unstructured characteristics
  - Known refresh behavior
  - Sensitivity, Aggregation, or interpretation concerns
    
6. Need-To-Source Fit

| Proposed Question | Needed Fields | Candidate Source Objects | Why the Source is Sufficient | Gap/Assumption to test in P1 |
| ---- | ---- | ---- | ---- | ---- |
| Are there any demographic groups (race or gender) that have an outlying high attrition rate? | ---- | ---- | ---- | ---- |
| Are there any demographic groups (race or gender) that have an outlying low hiring rate? | ---- | ---- | ---- | ---- |
| Are demographic hiring rates similar across different intersecionalities of the demographic groups (i.e. Black Women)? | ---- | ---- | ---- | ---- |
| Which department(s) have the lowest hiring rates of each demographic group, including intersectional groups? | ---- | ---- | ---- | ---- |

7. Feasibility Risks

| Risk | Known Evidence | Next Check | Potential Fallback |
| ---- | ---- | ---- | ---- |
| Insufficient Grain | Most of the data is already aggregated to rates or indexes (based at 100), so it may be difficult to apply scale and impossible to disaggregate data for novel analysis. | Is there little enough missing data across the tables such that each analysis could be done in relative terms? Is the data in `full_csv-latest-data-is-2023` sufficient to join on to adjust rates to raw values? | Apply analysis on each pre-aggregation, so that each question will be satisfied by a single table, and there won't be cross-table insights |
| No IDs | There are no primary key columns available in any of the tables that create uniqueness, so composite keys across years will need to be used | Are the keys consistent enough to be used as conformed dimensions, or do the workforce values change across time? | If workforce values are inconsistent, the documentation states that there are overall rows, and analysis will be shifted to be on the whole group rather than workforce-based grain |
| Static Data | The documentation shows that there should be data through either 2023 or 2024, each of which are called out, but querying the tables only show data through 2022 | Is the data pre-2021 robust enough to satisfy the analysis, so that 2022 can be viewed as the update change condition | Continue to move forward one year in time (t0 2020, then 2019 etc.) until both sides of that line have enough data to apply the analysis and change condition |

8. First P1 Decision: Are the workforce values consistently applied across the history, so that they can be used as a conformed dimension for more granular analysis
9. AI Disclaimer

No AI was used generating this proposal
