# 1. Establish the Question and Check the Source
## Primary Question
p
## Source Object(s)
p
## Check Results
code to go into sql/01_source_profile.sql
Sample code
WITH grain_groups AS (
  SELECT candidate_id, COUNT(*) AS rows_per_id
  FROM `project.dataset.table`
  GROUP BY candidate_id
)
SELECT
  COALESCE(SUM(rows_per_id), 0) AS source_rows,
  COALESCE(SUM(IF(candidate_id IS NULL, rows_per_id, 0)), 0) AS rows_with_null_id,
  COUNTIF(candidate_id IS NOT NULL AND rows_per_id > 1) AS repeated_id_groups
FROM grain_groups;

# 2. Define the Model
| Question | Analysis |
| -------- | -------- |
| Business Process | p |
| Fact Table Type | p |
| Grain | One row represents... |
| Consequential modeling choice or tradeoff | p |

## Diagram with Principal Fact, Necessary Dimensions, Key Strategy, Measures, Attributes, Relationships
## Change plan
| Question | Answer |
| -- | -- |
| Attribute | p |
| Solution Type | 1/2/Fixed etc |
## Shared Dimensions?
p
## Testable behavior by P3
p
## Change case for P3
p

# 3. Build Plan
## Raw/Curated/Serving table names
| Layer | Table Name | Justification |
| -- | -- | -- |
| Raw | -- | -- |
| Curated | -- | -- |
| Serving | -- | -- |

# Run Order 
p
## 2 Specific Risks + Planned Check for each
1. p
2. q
## Is the traced field sensitive
p
## Biggest Limitation
p
## P2 First Step?
p

# 4. Revisions?
