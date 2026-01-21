CREATE VIEW gold.powerbi_view AS
    SELECT TOP (1000) a.[appid]
          ,a.[name]
          ,a.[type]
          ,a.[is_free]
          ,a.[release_date]
          ,a.[required_age]
          ,a.[metacritic_score]
          ,a.[recommendations_total]
          ,a.[mat_initial_price]
          ,a.[mat_final_price]
          ,a.[mat_discount_percent]
          ,a.[mat_currency]
          ,a.[mat_achievement_count]
          ,acat.category_id
          ,cat.name category
          ,agen.genre_id
          ,gen.name genre
          ,adev.developer_id
          ,dev.name developer
          ,aplat.platform_id
          ,plat.name platform
          ,apub.publisher_id
          ,pub.name publisher
      FROM [SteamDatabase].[silver].[applications] a
    LEFT JOIN silver.application_categories acat ON
    a.appid = acat.appid
    LEFT JOIN silver.categories cat ON
    acat.category_id = cat.id
    LEFT JOIN silver.application_genres agen ON
    a.appid = agen.appid
    LEFT JOIN silver.genres gen ON
    agen.genre_id = gen.id
    LEFT JOIN silver.application_developers adev ON
    a.appid = adev.appid
    LEFT JOIN silver.developers dev ON
    adev.developer_id = dev.id
    LEFT JOIN silver.application_platforms aplat ON
    a.appid = aplat.appid
    LEFT JOIN silver.platforms plat ON
    aplat.platform_id = plat.id
    LEFT JOIN silver.application_publishers apub ON
    a.appid = apub.appid
    LEFT JOIN silver.publishers pub ON
    apub.publisher_id = pub.id