-- 6. For movies that are longer than 3 hours and 30 minutes (210 minutes), add the sentence "This is a long movie." to the end of the overview. (5 rows)
--

update movie set overview = overview || ' This is a long movie.'
where length_minutes > 210;
