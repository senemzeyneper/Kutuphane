CREATE TABLE books(
book_id INT PRIMARY KEY IDENTITY,
title VARCHAR(100) NOT NULL,
author VARCHAR(100) NOT NULL,
genre VARCHAR(100),
price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
stock INT NOT NULL CHECK (stock >= 0),
published_year INT CHECK(published_year BETWEEN 1800 AND 2025),
added_at  DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE)

);


INSERT INTO books (title, author, genre, price, stock, published_year, added_at)
VALUES
('Kayýp Zamanýn Ýzinde' , 'M.Proust' , 'roman', 129.90 , 25  ,1913 , '2025-08-20'),
('Simyacý' , 'P. Coelho' , 'roman' , 89.50 , 40 , 1988 , '2025-08-21'),
('Sapiens' , 'Y.N Harari' , 'tarih' , 159.00 , 18 , 2011 , '2025-08-25'),
('Ýnce Memed' , 'Y. Kemal' , 'roman' , 99.90 , 12 , 1955 , '2025-08-22'),
('Körlük' , 'J. Saramago' , 'roman' , 119.00 , 7 , 1995 , '2025-08-28'),
('Dune' , 'F. Herbert' , 'bilim' , 149.00 , 30 , 1965 , '2025-09-01'),
('Hayvan Çiftliði' , 'G. Orwell' , 'roman' , 79.90 , 55 , 1945 , '2025-08-23'),
('1984' , 'G. Orwell' , 'roman' , 99.00 , 35 , 1949 , '2025-08-24'),
('Nutuk' , 'M. K. Atatürk' , 'tarih' , 139.00 , 20 , 1927 , '2025-08-27'),
('Küçük Prens' , 'A. de Saint-Exupéry' , 'çocuk' , 69.90 , 80 , 1943 , '2025-08-26'),
('Baþlangýç' , 'D. Brown' , 'roman' , 109.00 , 22 , 2017 , '2025-09-02'),
('Atomik Alýþkanlýklar' , 'J. Clear' , 'kiþisel geliþim' , 129.00 , 28 , 2018 , '2025-09-03'),
('Zamanýn Kýsa Tarihi' , 'S. Hawking' , 'bilim' , 119.50 , 16 , 1988 , '2025-08-29'),
('Þeker Portakalý' , 'J. M. de Vasconcelos' , 'roman' , 84.90 , 45 , 1968 , '2025-08-30'),
('Bir Ýdam Mahkûmunun Son Günü' , 'V. Hugo' , 'roman' , 74.90 , 26 , 1829 , '2025-08-31');
