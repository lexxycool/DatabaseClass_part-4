-- 10. For all people born before 1950 and have a home page, add the home page to the end of their biography. (142 rows)
-- Note: Assume all biographies end in a period with no trailing spaces. You'll need to also add a space before the website address.

update person set biography =  biography || ' ' || home_page
where birthday < '01/01/1950'
and home_page is not null;

select biography, home_page
from person;