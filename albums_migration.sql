USE codeup_test_db;

# DROP TABLE IF EXISTS albums;//can do this step to drop table that might have already been created.

# CREATE TABLE IF NOT EXISTS albums();//this will create album if it does not already exist.

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(100) NOT NULL,
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);