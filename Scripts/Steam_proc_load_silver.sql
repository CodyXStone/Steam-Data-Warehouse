/*
===============================================================================
DDL Script: Load silver layer (bronze -> silver)
===============================================================================
Script Purpose:
	This stored prcedure prefroms the ETL(Extract, Transform, Load) process to populate the 'silver' schema tables from
	the 'bronze' schema.
Actions Perfromed:
	-Truncates Silver Tables.
	-Inserts transformed and clensed data from Bronze into Silver tables.

Parameters:
	None.
	This stored procedure does not accept any parameters or return any values

Usage:
	Exec silver.load_silver;
==============================================================================
*/




CREATE OR ALTER PROCEDURE silver.load_silver AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
	BEGIN TRY
		SET @batch_start_time = GETDATE();
		PRINT'======================================================'
		PRINT'LOADING THE SILVER LAYER'
		PRINT'======================================================'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.application_categories';
	TRUNCATE TABLE silver.application_categories;
	PRINT'>>> Inserting Data Into: silver.application_categories';
	INSERT INTO silver.application_categories(
		appid,
		category_id
		)
	SELECT 
		appid,
		category_id
	FROM bronze.application_categories
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.application_developers';
	TRUNCATE TABLE silver.application_developers;
	PRINT'>>> Inserting Data Into: silver.application_developers';
	INSERT INTO silver.application_developers(
		appid,
		developer_id
		)
	SELECT
		appid,
		developer_id
	FROM bronze.application_developers
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.application_genres';
	TRUNCATE TABLE silver.application_genres;
	PRINT'>>> Inserting Data Into: silver.application_genres';
	INSERT INTO silver.application_genres(
		appid,
		genre_id
		)
	SELECT
		appid,
		genre_id
	FROM bronze.application_genres
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.application_platforms';
	TRUNCATE TABLE silver.application_platforms;
	PRINT'>>> Inserting Data Into: silver.application_platforms';
	INSERT INTO silver.application_platforms(
		appid,
		platform_id
		)
	SELECT
		appid,
		platform_id
	FROM bronze.application_platforms
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.application_publishers';
	TRUNCATE TABLE silver.application_publishers;
	PRINT'>>> Inserting Data Into: silver.application_publishers';
	INSERT INTO silver.application_publishers(
		appid,
		publisher_id
		)
	SELECT
		appid,
		publisher_id
	FROM bronze.application_publishers
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.applications';
	TRUNCATE TABLE silver.applications;
	PRINT'>>> Inserting Data Into: silver.applications';
	INSERT INTO silver.applications(
		[appid]
       ,[name]
       ,[type]
       ,[is_free]
       ,[release_date]
       ,[required_age]
       ,[short_description]
       ,[supported_languages]
       ,[header_image]
       ,[background]
       ,[metacritic_score]
       ,[recommendations_total]
       ,[mat_supports_windows]
       ,[mat_supports_mac]
       ,[mat_supports_linux]
       ,[mat_initial_price]
       ,[mat_final_price]
       ,[mat_discount_percent]
       ,[mat_currency]
       ,[mat_achievement_count]
       ,[mat_pc_os_min]
       ,[mat_pc_processor_min]
       ,[mat_pc_memory_min]
       ,[mat_pc_graphics_min]
       ,[mat_pc_os_rec]
       ,[mat_pc_processor_rec]
       ,[mat_pc_memory_rec]
       ,[mat_pc_graphics_rec]
       ,[created_at]
       ,[updated_at]
		)
	SELECT 
		[appid]
	   ,[name]
       ,[type]
       ,[is_free]
       ,[release_date]
       ,[required_age]
       ,[short_description]
       ,[supported_languages]
       ,[header_image]
       ,[background]
       ,[metacritic_score]
       ,[recommendations_total]
       ,[mat_supports_windows]
       ,[mat_supports_mac]
       ,[mat_supports_linux]
       ,[mat_initial_price]
       ,[mat_final_price]
       ,[mat_discount_percent]
       ,[mat_currency]
       ,[mat_achievement_count]
       ,[mat_pc_os_min]
       ,[mat_pc_processor_min]
       ,[mat_pc_memory_min]
       ,[mat_pc_graphics_min]
       ,[mat_pc_os_rec]
       ,[mat_pc_processor_rec]
       ,[mat_pc_memory_rec]
       ,[mat_pc_graphics_rec]
       ,[created_at]
       ,[updated_at]
	FROM bronze.applications
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'
	
	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.categories';
	TRUNCATE TABLE silver.categories;
	PRINT'>>> Inserting Data Into: silver.categories';
	INSERT INTO silver.categories(
		id,
		name
		)
	SELECT
		id,
		name
	FROM bronze.categories
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'
	
	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.developers';
	TRUNCATE TABLE silver.developers;
	PRINT'>>> Inserting Data Into: silver.developers';
	INSERT INTO silver.developers(
		id,
		name
		)
	SELECT
		id,
		TRIM(name) AS name
	FROM bronze.developers
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.genres';
	TRUNCATE TABLE silver.genres;
	PRINT'>>> Inserting Data Into: silver.genres';
	INSERT INTO silver.genres(
		id,
		name
		)
	SELECT
		id,
		name
	FROM bronze.genres
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.platforms';
	TRUNCATE TABLE silver.platforms;
	PRINT'>>> Inserting Data Into: silver.platforms';
	INSERT INTO silver.platforms(
		id,
		name
		)
	SELECT
		id,
		name
	FROM bronze.platforms
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.publishers';
	TRUNCATE TABLE silver.publishers;
	PRINT'>>> Inserting Data Into: silver.publishers';
	INSERT INTO silver.publishers(
		id,
		name
		)
	SELECT
	 id,
	 name
	FROM bronze.publishers
	SET @end_time = GETDATE();
	PRINT'>> Load Duration: ' + CAST(DATEDIFF(second, @start_time,@end_time) AS NVARCHAR) + ' seconds';
	PRINT'///////////////////////'

	SET @start_time = GETDATE();
	PRINT'>>>Truncating Table :silver.reviews';
	TRUNCATE TABLE silver.reviews;
	PRINT'>>> Inserting Data Into: silver.reviews';
	INSERT INTO silver.reviews(
		[recommendationid]
       ,[appid]
       ,[author_steamid]
       ,[author_num_games_owned]
       ,[author_num_reviews]
       ,[author_playtime_forever]
       ,[author_playtime_last_two_weeks]
       ,[author_playtime_at_review]
       ,[author_last_played]
       ,[language]
       ,[review_text]
       ,[timestamp_created]
       ,[timestamp_updated]
       ,[voted_up]
       ,[votes_up]
       ,[votes_funny]
       ,[weighted_vote_score]
       ,[comment_count]
       ,[steam_purchase]
       ,[received_for_free]
       ,[written_during_early_access]
	   )
	Select
		[recommendationid]
       ,[appid]
       ,[author_steamid]
       ,[author_num_games_owned]
       ,[author_num_reviews]
       ,[author_playtime_forever]
       ,[author_playtime_last_two_weeks]
       ,[author_playtime_at_review]
       ,[author_last_played]
       ,[language]
       ,[review_text]
       ,[timestamp_created]
       ,[timestamp_updated]
       ,[voted_up]
       ,[votes_up]
       ,[votes_funny]
       ,[weighted_vote_score]
       ,[comment_count]
       ,[steam_purchase]
       ,[received_for_free]
       ,[written_during_early_access]
	FROM bronze.reviews


	
	END TRY
	BEGIN CATCH
		PRINT'==========================================';
		PRINT'ERROR OCCURED DURING LOADING BRONZE LAYER';
		PRINT'Error Message' + ERROR_MESSAGE();
		PRINT'Error Message' +CAST(ERROR_NUMBER() AS NVARCHAR);
		PRINT'Error Message' + CAST(ERROR_STATE() AS NVARCHAR);
		PRINT'==========================================';
	END CATCH
END

