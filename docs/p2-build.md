## 1. Input/Ingestion
| Question | Answer |
| -- | -- |
| Primary Question | What demographic group(s) are seeing their hiring rates rise? |
| Product Piece | This specific ingestion will provide YoY changes in the hiring rate of specific intersectional demographic groups, and will be followed for the two other hiring tables reported by Google. It will elevate the largest changes in hiring year to year, and will also provide the context of the raw value, so small raw changes that show as large percentage changes can be properly contextualized. |
| Grain Changes? | None present |
| Source Object | `bigquery-public-data.google_dei.dar_intersectional_hiring` |
| Ingestion Plan | The external --> raw step maintains all values from the Google table, and supplements with an identity Run_Id column, as well as the current_timestamp of the load for traceability purposes. The only qualifiers present, are a filter on the Report Year to restrict the load so that it can be grown incrementally while testing |
| Raw creation | DDL code to create the raw table is in the file [99_P2-DDL.sql](https://github.com/svmurray/732_final_project/blob/main/sql/99_P2-DDL.sql), and code to populate, with a year parameter is available in the [load file](https://github.com/svmurray/732_final_project/blob/main/sql/02_ingest.sql)
| Raw last run | 2026-11-16 00:36:43.080743 UTC |
| Row Count | 32 |
| Row Grain | One row represents one year-gender-workforce group's hiring rates as reported by Google on its annual Diversity Annual Report |
| Snapshot Scope | Load using 2018 as the Report Year |

## 2. Curation
| Question | Answer |
| -- | -- |
| One Row Represents | One row represents one year-gender-workforce group's hiring rates as reported by Google on its annual Diversity Annual Report |
| Keys | Run_ID as a warehouse key, which is on the granularity of the table (one year-gender-workforce group) |
| Row Count | 32 |
| Row Count Differences? | There is no difference in the row count from Raw to Curated due to the nature of the data being ingested, it is small and already highly managed, so there are no instances of null or out-of-bound values |
 # Rules
 * Gender, Workforce, and Year are non-null
 * All racial hiring rates are <= 1.0

# Field Trace
| Question | Answer |
| -- | -- |
| Source Field | race_white |
| Raw Field | race_white |
| Curated Field | race_white_change |
| Formula | race_white_change / race_white_change (2) where (2) indicates the value from the preivous report year |
| Output | The output will support the indication of whether the hiring rate rose or fell and by what magnitude YoY |

## 3. Acceptance Checks
| Risk and affected result | Check code | Expected result and why | Observed result | Interpretation or action |
| -- | -- | -- | -- | -- |
| Hiring Rate over 100% | [04_acceptance.sql lines 3-13](https://github.com/svmurray/732_final_project/blob/main/sql/04_acceptance.sql) | 0 | 0 | This indicates that no rows are out of bounds. Any rows that fail the check should not be included, but would be symptomatic of a larger issue, so the curation check raises errors if/when failures occur |
| Non-identified group | [04_acceptance.sql lines 15-22](https://github.com/svmurray/732_final_project/blob/main/sql/04_acceptance.sql) | 0 | 0 | This indicates that no rows are out of bounds. Any rows that fail the check should not be included, but would be symptomatic of a larger issue, so the curation check raises errors if/when failures occur |
