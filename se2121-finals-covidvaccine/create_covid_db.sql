CREATE DATABASE covid_db;

CREATE TABLE locations (
    loc_ios_code varchar(255) NOT NULL PRIMARY KEY,
    loc_name varchar(255)
);

CREATE TABLE vaccines (
    vac_name varchar(255) NOT NULL PRIMARY KEY
);

CREATE TABLE vaccinations_by_manufacturer (
    vbm_id BIGSERIAL NOT NULL PRIMARY KEY,
    
    vbm_location varchar(255),

    vbm_date varchar(255),

    vbm_vaccine varchar(255),

    vbm_total_vaccinations int
);

CREATE TABLE vaccinations_by_location (
    vbl_id BIGSERIAL NOT NULL PRIMARY KEY,

    vbl_location varchar(255),

    vbl_iso_code varchar(255),

    vbl_vaccines varchar(255),

    vbl_last_observation_date date,

    vbl_source_name varchar(255),

    vbl_source_website varchar(255)
);