# 1. Establish the Question and Check the Source
## Primary Question
What demographic group(s) are seeing their hiring rates rise?

## Primary Source Object(s)
`bigquery-public-data.google_dei.dar_intersectional_hiring`;
`bigquery-public-data.google_dei.dar_non_intersectional_hiring`;
`bigquery-public-data.google_dei.dar_region_non_intersectional_hiring`;

## Check Results
| Table Name | Expected Invalid Rows | Actual Invalid Rows |
| -- | -- | -- |
| dar_intersectional_hiring | 0 | 0 |
| dar_non_intersectional_hiring | 0 | 0 |
| dar_region_non_intersectional_hiring | 0 | 0 |

Code to retrieve actuals is available in sql/01_source_profile.sql

# 2. Define the Model
| Question | Analysis |
| -------- | -------- |
| Business Process | The business process being represented, is a full year's worth of hiring data being evaluated for DEI trends in the workplace - this analysis will primarily focus on the Hiring Rate as it is reported as a percentage by Google. |
| Grain | One row represents one group-level annualized hiring rate data point |
| Consequential modeling choice or tradeoff | For any persons who self identified as more than one group, they are represented in both, making the sum of percentages potentially over 100% |
| Fact Table Type | Snapshot - every year, when the Google's DEI report is published, a new set of rows will be added. So evaluation that the hiring rates add up to 100 would be an insufficient data quality check and lead to flagging good data as bad. |

## Diagram with Principal Fact, Necessary Dimensions, Key Strategy, Measures, Attributes, Relationships
Keys are not present in the raw data, warehouse keys will be added when the data is loaded into the Raw layer. Deduplication checks will be done on the data as it is read, not using the internal keys. Database diagram is available in docs/model.png

## Change plan
Google's self defined Work Force (including values like 'tech' and 'non-tech') may change depending on how the internal departments are classified, but given that data is preaggregated before it is published for consumption in this report, this analysis will use the data as it is published. This may lead to inconsistencies between years if departments change where they roll up. In an idealized version, the available data would be more granular, and the rate calculations would be done in the serving layer of this model. In that case, department to work group mapping would exist in a dimension table with as-of dates and an is_active flag.

## Shared Dimensions?
Similar to the above, Work Force is a shared dimension across all of the report DEI metrics from Google and must be interpreted similarly for each metric. That dimension is 

## Testable behavior by P3
Load data into Raw table with a changing time-bound, and ensure that when loaded, only new data is added with no duplicate rows being created in the Raw layer.

## Change case for P3
Assume that data for 2022 is newly posted and ingest it as a new publishing while 2015-2021 are in steady-state in the database.

# 3. Build Plan
## Raw/Curated/Serving table names
| Layer | Table Name | Justification |
| -- | -- | -- |
| Raw | Raw_Hiring_Rates_* | There will be three separate tables that are fed by each of the *hiring* input tables |
| Curated | All_Hiring_Rates | The three tables will be grouped together to have a single table with all three of the input tables feeding into it. |
| Serving | Hiring_Rate_Flags | Will surface significant changes in hiring for any of the reported demographic groups year over year. |

# Run Order 
Load Data to Raw + Add Surrogate IDs --> Load to Curated where all pivot fields are non-null --> Validate Data (all hiring rate values are < 100% and the sum is at least 100%) --> Compare YoY values for flagging --> Write to Serving
## 2 Specific Risks + Planned Check for each
1. Check that Hiring Rates are reported as decimals (<1) and that doesn't change to being reported in numbers 0-100. If the scale changes, that would invalidate YoY comparisons. The validation will be that each of the values is <1, and anything over 1 will not be written to Curated
2. All pivot fields for each table are non-null (gender, region, workforce, year) where applicable because there is no single unique identifier available to look for uniqueness 
   
## Is the traced field sensitive
No sensitive fields are available in this dataset. All of the sensitivity has been handled before this data was made public in BigQuery. If the underlying data about specific employees was in the dataset, that would be sensitive and need to be highly restricted.

## Biggest Limitation
Limited data size and difficulty in finding definitions. I was unable to find a clear definition on the available Index values, but the publically available Google DEI report did define the Hiring Rate as the Rate of Hiring for Google across the specified granularity. Given the inability to unroll the data provided, it can only be compared across the same pre-aggregated grains, not any others due to the potential for misleading and incorrect calculations

## P2 First Step?
Build a pipeline to load a two years from External --> Raw --> Curated with YoY flags being calculated. Evaluate the calculations for integrity

