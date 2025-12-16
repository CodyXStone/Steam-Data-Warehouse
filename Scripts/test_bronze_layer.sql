--Check for unwanted spaces  Result expected: 0 results
SELECT name
FROM bronze.genres
WHERE name != TRIM(name)

--Check for unwanted spaces in the bronze.applicaitons table Result expected: 0 results
SELECT name
FROM bronze.applications
WHERE name != TRIM(name)

SELECT type
FROM bronze.applications
WHERE type != TRIM(type)

SELECT short_description
FROM bronze.applications
WHERE short_description != TRIM(short_description)

--Check for unwanted spaces in bronze.categories table Result expected: 0 results
SELECT name
FROM bronze.categories
WHERE name != TRIM(name)

--Check for untwanted spaces in bronze.developers table Result expected: 0 results
SELECT TRIM(name) AS name
FROM bronze.developers
WHERE name != TRIM(name)

--Check for unwanted spaces in bronze.genres table Result expected: 0 results
SELECT name
FROM bronze.genres
WHERE name != TRIM(name)

-- Check for unwanted spaces in bronze.platforms table Result expected: 0 results
SELECT name
FROM bronze.platforms
WHERE name != TRIM(name)