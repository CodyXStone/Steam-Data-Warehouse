CREATE VIEW gold.applications AS
SELECT 
	applications.appid,
	applications.name,
	applications.type,
	applications.mat_initial_price AS initial_price,
	cat.name AS category,
	plat.name AS platform
FROM silver.applications applications
LEFT JOIN silver.application_categories acat
ON applications.appid = acat.appid
LEFT JOIN silver.categories cat
ON acat.category_id = cat.id
LEFT JOIN silver.application_platforms ap
ON applications.appid = ap.appid
LEFT JOIN silver.platforms plat
ON ap.platform_id = plat.id
