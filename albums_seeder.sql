USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
                                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                     artist VARCHAR(50),
                                     album  VARCHAR(100) ,
                                     release_date INT,
                                     genre VARCHAR(50),
                                     sales FLOAT,
                                     PRIMARY KEY (id)
);

# Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
# First write your queries as separate INSERT statements for each record and test. You should see no output.
# Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
INSERT INTO albums(artist, album, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', '1982', 'Pop', '48.9'),
       ('AC/DC', 'Back in Black', '1980', 'Hard Rock', '29.6'),
       ('Whitney Houston', 'The Bodyguard', '1992', 'R&B', '32.4'),
       ('Meat Loaf', 'Bat Out of Hell', '1977', 'Hard Rock', '21.7'),
       ('Eagles', 'The Greatest Hits (1971-1975)', '1976', 'Soft Rock', '41.2'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', 'Progressive Rock', '24.4'),
       ('Eagles', 'Hotel California', '1976', 'Soft Rock', '31.5'),
       ('Bee-Gees', 'Saturday Night Fever', '1977', 'Disco', '21.6'),
       ('Fleetwood Mac', 'Rumours', '1977', 'Soft Rock', '27.9'),
       ('Shania Twain', 'Come On Over', '1997', 'Country pop', '29.6'),
       ('Eagles', 'Hotel California', '1976', 'Soft Rock', '31.5'),
       ('Cast of Grease', 'Grease: The Original Soundtrack', '1978', 'Rock and Roll', '14.4'),
       ('Led Zeppelin', 'Led Zeppelin IV', '1971', 'Heavy Rock', '29.0'),
       ('Michael Jackson', 'Bad', '1987', 'Pop', '20.7'),
       ('Alanis Morissette', 'Jagged Little Pill', '1995', 'Alternative Rock', '24.3'),
       ('Michael Jackson', 'Dangerous', '1991', 'Pop', '17.0'),
       ('Celine Dion', 'Falling into You', '1996', 'Pop', '21.1'),
       ('The Beatles', 'Sgt. Pepper\'s Lonely Hearts Club Band', '1967', 'Rock', '18.2'),
       ('Dirty Dancing', 'Dirty Dancing', '1971', 'Heavy Rock', '29.0'),
       ('Adele', '21', '2011', 'Pop', '26.4'),
       ('Celine Dion', 'Lets\'s Talk About Love', '1997', 'Pop', '19.3'),
       ('Metallica', 'Metallica', '1991', 'Heavy Metal', '25.2'),
       ('The Beatles', '1', '2000', 'Rock', '23.5'),
       ('The Beatles', 'Abby Road', '1969', 'Rock', '14.4'),
       ('ABBA', 'Gold: Greatest Hits', '1992', 'Disco', '23.0'),
       ('Bruce Springsteen', 'Born in the USA', '1984', 'Heartland Rock', '19.6'),
       ('Madonna', 'The Immaculate Collection', '1990', 'Pop', '19.5'),
       ('Pink Floyd', 'The Wall', '1979', 'Progressive Rock', '18.7'),
       ('James Horner', 'Titanic: Music from the Motion Picture', '1997', 'Film Score', '18.1'),
       ('Dire Straits', 'Brothers in Arms', '1985', 'Blues Rock', '17.7'),
       ('Nirvana', 'Nevermind', '1991', 'Grunge', '16.7'),
       ('Santana', 'Supernatural', '1999', 'Latin Rock', '20.5'),
       ('Guns N\' Roses', 'Appetite for Destruction', '1987', 'Hard Rock', '21.9'),
       ('Elton John', 'Goodbye Yellow Brick Road', '1973', 'Rock', '8.5');

































