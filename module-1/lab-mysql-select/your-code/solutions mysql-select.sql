/* CHALLENGUE 1
SELECT titleauthor.au_id as ' AUTHOR ID', authors.au_lname as 'LAST NAME', authors.au_fname as 'FIRST NAME', titles.title as 'TITLE', publishers.pub_name as 'PUBLISHER'
FROM titleauthor
LEFT JOIN authors ON titleauthor.au_id = authors.au_id
LEFT JOIN titles ON titleauthor.title_id = titles.title_id
LEFT JOIN publishers On titles.pub_id = publishers.pub_id;
*/

/* CHALLENGUE 2
SELECT authors.au_id AS 'AUTHROR ID', authors.au_lname AS 'LAST NAME', authors.au_fname AS 'FIRST NAME',
    publishers.pub_name AS 'PUBLISHER', COUNT(titleauthor.au_id) as 'TITLE COUNT'
FROM authors RIGHT JOIN titleauthor on authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN publishers ON titles.pub_id = publishers.pub_id GROUP BY authors.au_id, publishers.pub_id;
*/


/*CHALLENGE 3, 4
SELECT authors.au_id as 'AUTHOR ID', authors.au_lname as 'LAST NAME',  authors.au_fname as 'FIRST NAME', SUM(titles.ytd_sales) as 'TOTAL'
	FROM authors 
    JOIN titleauthor ON authors.au_id = titleauthor.au_id
    JOIN titles ON titleauthor.title_id = titles.title_id
    GROUP BY authors.au_id
    ORDER BY SUM(ytd_sales) DESC
    LIMIT 23;
*/
    