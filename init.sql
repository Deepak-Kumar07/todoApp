CREATE DATABASE IF NOT EXISTS todo_app;

USE todo_app;

GRANT ALL PRIVILEGES ON todo_app.* TO 'todouser'@'%';
FLUSH PRIVILEGES;

CREATE TABLE task (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(255),
    completed BOOLEAN DEFAULT false
);

INSERT INTO task (content, completed) VALUES
('Task 1', false),
('Task 2', true);