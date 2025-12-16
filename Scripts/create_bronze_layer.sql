/*
====================================================
Create tables for bronze level data
====================================================
Script purpose:
	Checks to see if the tables exist. If so it will drop
	the table and create a new one within existing parameters.
*/

USE SteamDatabase;
GO

--Check to see if table exists within SteamDatabase
If OBJECT_ID('bronze.application_categories', 'U') IS NOT NULL
	DROP TABLE bronze.application_categories;

--Create table bronze.application_categories
CREATE TABLE bronze.application_categories(
	appid INT,
	category_id INT
);
GO

--Check to see if table exists within SteamDatabase
If OBJECT_ID('bronze.application_developers', 'U') IS NOT NULL
	DROP TABLE bronze.application_developers;

--Create table bronze.application_developers
CREATE TABLE bronze.application_developers(
	appid INT,
	developer_id INT
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID ('bronze.application_genres', 'U') IS NOT NULL
	DROP TABLE bronze.application_genres;
GO

--Create table bronze.application_genres
CREATE TABLE bronze.application_genres(
	appid INT,
	genre_id INT
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.application_platform', 'U') IS NOT NULL
	DROP TABLE bronze.application_platform;
GO

--Create table bronze.application_platform
CREATE TABLE bronze.application_platform(
	appid INT,
	platform_id INT
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.application_publishers', 'U') IS NOT NULL
	DROP TABLE bronze.application_publishers;
GO

--Create table bronze.application_publishers
CREATE TABLE bronze.application_publishers(
	appid INT,
	publisher_id INT
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.applications', 'U') IS NOT NULL
	DROP TABLE bronze.applications;
GO

--Create table bronze.applications
CREATE TABLE bronze.applications(
	appid INT,
	name NVARCHAR(50),
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
	mat_pc_os_min NVARCHAR(50),
	mat_pc_processor_min NVARCHAR(50),
	mat_pc_memory_min NVARCHAR(50),
	mat_pc_graphics_min NVARCHAR(50),
	mat_pc_os_rec NVARCHAR(50),
	mat_pc_processor_rec NVARCHAR(50),
	mat_pc_memory_rec NVARCHAR(50),
	mat_pc_graphics_rec NVARCHAR(50),
	created_at DATE,
	updated_at DATE
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.categories', 'U') IS NOT NULL
	DROP TABLE bronze.categories;
GO

--Create table bronze.categories
CREATE TABLE bronze.categories(
	id INT,
	name NVARCHAR(200)
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.developers', 'U') IS NOT NULL
	DROP TABLE bronze.developers;
GO

--Create table bronze.developers
CREATE TABLE bronze.developers(
	id INT,
	name NVARCHAR (200)
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.genre', 'U') IS NOT NULL
	DROP TABLE bronze.genre;
GO

--Create table bronze.genre
CREATE TABLE bronze.genre(
	id INT,
	name NVARCHAR(200)
);

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.platforms', 'U') IS NOT NULL
	DROP TABLE bronze.platforms;
GO

--CREATE TABLE bronze.platforms
CREATE TABLE bronze.platforms(
	id INT,
	name NVARCHAR(20)
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.publishers', 'U') IS NOT NULL
	DROP TABLE bronze.publishers;
GO

--Create table bronze.publishers
CREATE TABLE bronze.publishers(
	id INT,
	name NVARCHAR(200)
);
GO

--Check to see if table exists within SteamDatabase
IF OBJECT_ID('bronze.reviews', 'U') IS NOT NULL
	DROP TABLE bronze.reviews;
GO

--Create table bronze.reviews
CREATE TABLE bronze.reviews(
	recommendation_id INT,
	appid INT,
	author_steamid INT,
	author_num_games_owned INT,
	author_num_reviews INT,
	author_playtime_forever INT,
	author_playtime_last_two_weeks INT,
	author_playtime_at_review INT,
	author_last_played FLOAT,
	language NVARCHAR(50),
	review_text NVARCHAR(MAX),
	timestamp_created INT,
	timestamp_updated INT,
	voted_up NVARCHAR(50),
	votes_up INT,
	votes_funny INT,
	weighted_vote_score FLOAT,
	comment_count INT,
	steam_purchase NVARCHAR(50),
	received_for_free NVARCHAR(50),
	written_during_early_access NVARCHAR(50),
	created_at DATE,
	updated_at DATE
);
GO
