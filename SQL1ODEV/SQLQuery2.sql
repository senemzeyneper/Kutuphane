--1.
SELECT * FROM books
ORDER BY title ASC;

SELECT * FROM books
ORDER BY author ASC;

SELECT * FROM books
ORDER BY price ASC;
--2.
SELECT * FROM books
WHERE genre = 'roman'
ORDER BY title ASC;
--3.
SELECT * FROM books
WHERE price  BETWEEN 80 AND 120;
--4.
SELECT title, stock  FROM books
WHERE stock < 20;
--5.
SELECT * FROM books
WHERE title LIKE '%zaman%';

--6.
SELECT * FROM books
WHERE genre IN ('roman','bilim');
--7.
SELECT * FROM books
WHERE published_year >=  2000
ORDER BY published_year DESC;
--8.
SELECT *
FROM books
WHERE added_at >= DATEADD(DAY, -15, CAST(GETDATE() AS DATE));
--9.
SELECT Top 5* FROM books
ORDER BY price DESC;
--10.
SELECT * FROM books
WHERE stock  BETWEEN 30 AND 60
ORDER BY price ASC;







