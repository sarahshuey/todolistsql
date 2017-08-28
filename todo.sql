CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at timestamp NOT NULL default current_timestamp,
  completed_at timestamp NULL
);

INSERT INTO todolist(title, priority,created_at,completed_at) VALUES ('Daily Project', 1,'2017-08-28 2:31:50.180922','2017-08-28 14:32:50.180922');
INSERT INTO todolist(title, priority) VALUES ('Weekly Project', 1),('Grocery Store', 3),('Walk Dogs', 3),('Grocery Store', 3);

SELECT title, priority,completed_at FROM todolist WHERE completed_at is NULL;
SELECT title from todolist WHERE priority > 1;
UPDATE todolist SET completed_at = '2017-08-28 14:32:50.180922' WHERE id = 3;
DELETE FROM todolist WHERE completed_at IS NOT NULL;


-- 'psql -f todo.sql todolist'
