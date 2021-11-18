USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50),
                        name  VARCHAR(100) ,
                        release_date INT,
                        genre VARCHAR(50),
                        sales FLOAT,
                        PRIMARY KEY (id)
);