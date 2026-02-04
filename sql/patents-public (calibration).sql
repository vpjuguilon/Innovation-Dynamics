WITH FamilyDates AS (
  SELECT
    pubs.family_id,
    SUBSTR(cpc_code.code, 1, 4) AS cpc_group,
    MIN(pubs.filing_date) AS earliest_filing_int
  FROM
    `patents-public-data.patents.publications` AS pubs,
    UNNEST(pubs.cpc) AS cpc_code
  WHERE
    REGEXP_CONTAINS(cpc_code.code, r'^(G06N|H01M|H01L|B60W|G06Q|H04W|C12N|Y02E|B64U|A61P)')
    
    AND pubs.filing_date BETWEEN 20040101 AND 20241231
    
  GROUP BY
    pubs.family_id,
    cpc_group
)

-- STEP 2: Aggregate by Year
SELECT
  cpc_group,
  EXTRACT(YEAR FROM PARSE_DATE('%Y%m%d', CAST(earliest_filing_int AS STRING))) AS innovation_year,
  COUNT(family_id) AS family_count
FROM
  FamilyDates
GROUP BY
  cpc_group, innovation_year
ORDER BY
  cpc_group, innovation_year ASC

LIMIT 1000;