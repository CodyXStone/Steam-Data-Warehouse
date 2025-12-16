/*
====================================================
Create tables for silver level data
====================================================
Script purpose:
	Checks to see if the tables exist. If so it will drop
	the table and create a new one within existing parameters.
*/

USE SteamDatabase;
GO

--Check to see if table exists within SteamDatabase
If OBJECT_ID('silver.application_categories', 'U') IS NOT NULL
	DROP TABLE silver.application_categories;

--Create table silver.application_categories
CREATE TABLE silver.application_categories(
	appid INT,
	category_id INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
If OBJECT_ID('silver.application_developers', 'U') IS NOT NULL
	DROP TABLE silver.application_developers;

--Create table silver.application_developers
CREATE TABLE silver.application_developers(
	appid INT,
	developer_id INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID ('silver.application_genres', 'U') IS NOT NULL
	DROP TABLE silver.application_genres;
GO

--Create table silver.application_genres
CREATE TABLE silver.application_genres(
	appid INT,
	genre_id INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.application_platforms', 'U') IS NOT NULL
	DROP TABLE silver.application_platforms;
GO

--Create table silver.application_platforms
CREATE TABLE silver.application_platforms(
	appid INT,
	platform_id INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.application_publishers', 'U') IS NOT NULL
	DROP TABLE silver.application_publishers;
GO

--Create table silver.application_publishers
CREATE TABLE silver.application_publishers(
	appid INT,
	publisher_id INT,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.applications', 'U') IS NOT NULL
	DROP TABLE silver.applications;
GO

--Create table silver.applications
CREATE TABLE silver.applications(
	appid INT,
	name NVARCHAR(MAX),
	type NVARCHAR(50),
	is_free NVARCHAR(20),
	release_date DATE,
	required_age INT,
	short_description NVARCHAR(MAX),
	supported_languages NVARCHAR(MAX),
	header_image NVARCHAR(MAX),
	background NVARCHAR(MAX),
	metacritic_score INT,
	recommendations_total INT,
	mat_supports_windows NVARCHAR(20),
	mat_supports_mac NVARCHAR(20),
	mat_supports_linux NVARCHAR(20),
	mat_initial_price FLOAT,
	mat_final_price FLOAT,
	mat_discount_percent FLOAT,
	mat_currency NVARCHAR(50),
	mat_achievement_count INT,
	mat_pc_os_min NVARCHAR(MAX),
	mat_pc_processor_min NVARCHAR(MAX),
	mat_pc_memory_min NVARCHAR(MAX),
	mat_pc_graphics_min NVARCHAR(MAX),
	mat_pc_os_rec NVARCHAR(MAX),
	mat_pc_processor_rec NVARCHAR(MAX),
	mat_pc_memory_rec NVARCHAR(MAX),
	mat_pc_graphics_rec NVARCHAR(MAX),
	created_at DATE,
	updated_at DATE,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.categories', 'U') IS NOT NULL
	DROP TABLE silver.categories;
GO

--Create table silver.categories
CREATE TABLE silver.categories(
	id INT,
	name NVARCHAR(200),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.developers', 'U') IS NOT NULL
	DROP TABLE silver.developers;
GO

--Create table silver.developers
CREATE TABLE silver.developers(
	id INT,
	name NVARCHAR (200),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.genres', 'U') IS NOT NULL
	DROP TABLE silver.genres;
GO

--Create table silver.genre
CREATE TABLE silver.genres(
	id INT,
	name NVARCHAR(200),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.platforms', 'U') IS NOT NULL
	DROP TABLE silver.platforms;
GO

--CREATE TABLE silver.platforms
CREATE TABLE silver.platforms(
	id INT,
	name NVARCHAR(20),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.publishers', 'U') IS NOT NULL
	DROP TABLE silver.publishers;
GO

--Create table silver.publishers
CREATE TABLE silver.publishers(
	id INT,
	name NVARCHAR(200),
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('silver.reviews', 'U') IS NOT NULL
	DROP TABLE silver.reviews;
GO

--Create table silver.reviews
CREATE TABLE silver.reviews(
	recommendationid BIGINT,
	appid INT,
	author_steamid BIGINT,
	author_num_games_owned INT,
	author_num_reviews INT,
	author_playtime_forever DECIMAL,
	author_playtime_last_two_weeks DECIMAL,
	author_playtime_at_review DECIMAL,
	author_last_played DECIMAL,
	language NVARCHAR(50),
	review_text NVARCHAR(MAX),
	timestamp_created BIGINT,
	timestamp_updated BIGINT,
	voted_up DECIMAL,
	votes_up DECIMAL,
	votes_funny DECIMAL,
	weighted_vote_score FLOAT,
	comment_count DECIMAL,
	steam_purchase NVARCHAR(50),
	received_for_free DECIMAL,
	written_during_early_access DECIMAL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
GO
