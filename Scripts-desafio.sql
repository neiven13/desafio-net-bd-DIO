--1
SELECT
	Nome,
	Ano
FROM Filmes

--2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

--3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE 
	Nome = 'De volta para o futuro'

--4
SELECT
	*
FROM Filmes
WHERE 
	Ano = 1997

--5
SELECT
	*
FROM Filmes
WHERE 
	Ano > 2000

--6
SELECT 
	*
FROM Filmes
WHERE 
	Duracao >100 and 
	Duracao<150
ORDER BY Duracao ASC

--7
SELECT
	Ano,
	COUNT(Nome) Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE
	Genero = 'M'

--9
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE
	Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id=FG.IdFilme
INNER JOIN Generos G on G.Id=FG.IdGenero

--11
SELECT
	F.Nome,
	G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG on F.Id=FG.IdFilme
INNER JOIN Generos G on G.Id=FG.IdGenero
WHERE
	G.Genero='Mistério'

--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF on F.Id=EF.IdFilme
INNER JOIN Atores A on A.Id=EF.IdAtor
