/*SELECT titles.title_id as ' title id', authors.au_id as 'AUTHOR ID', authors.au_fname as'name',  titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as 'sales royalty'
FROM titles
JOIN titleauthor on titles.title_id = titleauthor.title_id
JOIN authors on authors.au_id = titleauthor.au_id
JOIN sales on titles.title_id = sales.title_id;
*/

/*
SELECT titles.title_id as 'title id', titles.au_id as 'author id', SUM(titles.sales) as 'suma'
FROM (SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as 'sales'
FROM titles
JOIN titleauthor on titles.title_id = titleauthor.title_id
JOIN authors on authors.au_id = titleauthor.au_id
JOIN sales on titles.title_id = sales.title_id) AS titles
GROUP BY titles.au_id, titles.title_id;
*/

SELECT tp.author_id as 'auhor id', SUM(tp.suma) as 'total profits'
FROM(SELECT titles.title_id as 'title id', titles.au_id as 'author_id', SUM(titles.sales) as 'suma'
FROM(SELECT titles.title_id, authors.au_id,  titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as 'sales'
FROM titles JOIN titleauthor ON titles.title_id = titleauthor.title_id JOIN authors on authors.au_id = titleauthor.au_id
JOIN sales on titles.title_id = sales.title_id) as titles 
GROUP BY titles.au_id, titles.title_id) as tp
GROUP BY tp.author_id;




