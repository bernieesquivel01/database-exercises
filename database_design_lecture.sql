USE quasar_db;

CREATE TABLE authors (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(50),
                         last_name  VARCHAR(100) NOT NULL,
                         PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
                                               ('Douglas', 'Adams'),
                                               ('Mark', 'Twain'),
                                               ('Kurt', 'Vonnegut');
SELECT * FROM authors;