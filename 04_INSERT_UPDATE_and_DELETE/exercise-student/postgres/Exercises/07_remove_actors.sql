-- 7. Remove the actor appearances in "Avengers: Infinity War" (14 rows)
-- Note: Don't remove the actors themeselves, just make it so it seems no one appeared in the movie.

select actor_id, person_name, overview from movie
join movie_actor on movie.movie_id = movie_actor.movie_id
join person on person.person_id = movie_actor.actor_id
 where title = 'Avengers: Infinity War';

delete from movie_actor
where movie_id = 299536;
