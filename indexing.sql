DROP DATABASE IF EXISTS indexed_cars;

DROP USER IF EXISTS indexed_cars_user;

CREATE USER indexed_cars_user;

DROP TABLE IF EXISTS car_models;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

/*SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

--TIME: 37.654ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

--TIME: 15.664ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

--TIME: 31.253ms

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;

--TIME: 84.671ms

SELECT *
FROM car_models
WHERE year = 2010;

--TIME: 31.257ms*/

CREATE INDEX make_code_idx
ON car_models (make_code);

CREATE INDEX make_title_idx
ON car_models (make_title);

CREATE INDEX model_code_idx
ON car_models (model_code);

CREATE INDEX model_title_idx
ON car_models (model_title);

CREATE INDEX year_idx
ON car_models (year);


SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';

--TIME: 0.000ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

--TIME: 0.000ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';

--TIME: 0.000ms

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;

--TIME: 84.642ms

SELECT *
FROM car_models
WHERE year = 2010;

--TIME: 15.585ms