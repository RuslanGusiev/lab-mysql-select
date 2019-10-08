use publications;

/* 1. SELECT authors.au_id, au_lname, au_fname, title, pub_name
FROM authors
INNER JOIN titleauthor
ON authors.au_id = titleauthor.au_id
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN publishers
ON titles.pub_id = publishers.pub_id;*/

/* 2. SELECT authors.au_id, au_lname, au_fname, pub_name, COUNT(title)
FROM authors, titles, publishers, titleauthor
WHERE authors.au_id = titleauthor.au_id AND titleauthor.title_id = titles.title_id AND titles.pub_id = publishers.pub_id
GROUP BY authors.au_id, au_lname, au_fname, pub_name;*/

/* 3.SELECT authors.au_id, au_lname, au_fname, SUM(qty) as Total
FROM authors, titleauthor, titles, sales
WHERE titles.title_id  = sales.title_id AND titles.title_id = titleauthor.title_id AND titleauthor.au_id = authors.au_id
GROUP BY authors.au_id, au_lname, au_fname
ORDER BY Total DESC
LIMIT 3;*/

/* 4. SELECT authors.au_id, au_lname, au_fname, SUM(qty) as Total
FROM authors
LEFT JOIN titleauthor ON titleauthor.au_id = authors.au_id
LEFT JOIN titles ON titles.title_id = titleauthor.title_id
LEFT JOIN sales ON titles.title_id  = sales.title_id
GROUP BY authors.au_id, au_lname, au_fname
ORDER BY Total DESC;*/


