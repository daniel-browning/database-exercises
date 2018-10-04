USE codeup_test_db;

SELECT * from albums;

SELECT * FROM albums WHERE release_date < 1980;

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = (sales * 10);
SELECT * from albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;
SELECT * from albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * from albums;