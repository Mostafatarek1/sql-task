CREATE DATABASE MOSTAFA
USE MOSTAFA
CREATE SCHEMA sasa

CREATE TABLE sasa.actor(
	act_id INT PRIMARY key,
	act_fname varchar (20),
	act_lname varchar (20),
	act_gender varchar (1),
)

CREATE TABLE sasa.director(
	dir_id INT PRIMARY KEY,
	dir_fname varchar (20),
	dir_lname varchar(20),


)

CREATE TABLE sasa.movie_direction(
	dir_id INT ,
	mov_id INT ,
	PRIMARY KEY (dir_id ,mov_id),
)
CREATE TABLE sasa.movie_cast(

	act_id INT ,
	mov_id INT,
	role varchar(30),
	PRIMARY KEY (act_id ,mov_id),
)

CREATE TABLE sasa.movie(
	
	mov_id INT PRIMARY KEY,
	mov_title varchar(50),
	mov_year INT,
	mov_time INT,
	mov_lang varchar(50),
	mov_dt_rel DATE,
	mov_rel_country  varchar(5),

)

CREATE TABLE sasa.reviewer(
	rev_id INT PRIMARY KEY,
	rev_name varchar(30),

)

CREATE TABLE sasa.genres(
	gen_id INT PRIMARY KEY,
	gen_title varchar(20),

)

CREATE TABLE sasa.movie_genres(
	mov_id INT ,
	gen_id INT,
	PRIMARY KEY(mov_id ,gen_id),

)
CREATE TABLE sasa.rating(
	mov_id INT ,
	rev_id INT,
	rev_stars INT,
	num_o_ratings INT, 
	PRIMARY KEY (mov_id,rev_id),
)