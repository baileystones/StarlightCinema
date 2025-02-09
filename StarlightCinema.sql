CREATE database StarlightCinema;
USE StarlightCinema;

CREATE table positions(
	position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(50) NOT NULL
);

INSERT INTO positions (position_name) VALUES
('General Manager'),
('Manager'),
('Team Leader'),
('Team Member');

CREATE table employees (
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(80) UNIQUE NOT NULL,
    phone VARCHAR(20),
    hire_date DATE,
    position_id INT,
    FOREIGN KEY (position_id) REFERENCES positions(position_id) ON DELETE SET NULL
);

CREATE TABLE team_member_training(
	employee_id INT PRIMARY KEY,
    trained_usher BOOLEAN DEFAULT FALSE,
    trained_box BOOLEAN DEFAULT FALSE,
    trained_door BOOLEAN DEFAULT FALSE,
    trained_concessions BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id) ON DELETE CASCADE
);

-- 1 is GM, 2 is M, 3 is TL, 4 is TM
INSERT INTO employees (first_name, last_name, email, phone, hire_date, position_id) VALUES
('Hailey', 'Jones', 'hjpants@mail.com', '555-111-2345', '2019-03-15', 1),
('Avery', 'Boog', 'boogsy1@mail.com', '555-234-5678', '2020-10-03', 2),
('Mallory', 'Burgess', 'mburger@mail.com', '555-345-6789', '2020-10-04', 2),
('Jonathan', 'Stein', 'jonstein@mail.com', '555-233-5687', '2021-01-07', 2),
('Morgan', 'McMiller', 'mmcm72@mail.com', '555-237-6571', '2021-01-10', 2),
('Samantha', 'Strader', 'samstrade@mail.com', '555-122-3789', '2021-03-06', 2),
('Blake', 'Downer', 'bdawg123@mail.com', '555-235-1237', '2021-03-25', 2),
('Donald', 'Buck', 'bonaldduck@mail.com', '555-247-5899', '2020-09-03', 3),
('Mike', 'Morris', 'mandm89@mail.com', '555-663-9826', '2020-11-08', 3),
('Megan', 'Dimar', 'mdmar@mail.com', '555-876-9278', '2020-11-17', 3),
('Amelia', 'Bednick', 'amebed@mail.com', '555-271-4820', '2021-12-03', 3),
('Dante', 'Gallagher', 'dgallag3r@mail.com', '555-662-9431', '2021-12-06', 3),
('Ethan', 'Cole', 'ecola@mail.com', '555-198-7364', '2021-12-07', 4),
('Sophia', 'King', 'sking@mail.com', '555-283-4821', '2022-01-15', 4),
('Lucas', 'Fisher', 'lfisherm4n@mail.com', '555-193-2847', '2022-02-03', 4),
('Isabella', 'Turner', 'iturner@mail.com', '555-485-2837', '2022-02-20', 4),
('Mason', 'Adams', 'ma7dams@mail.com', '555-284-1983', '2023-03-01', 4),
('Mia', 'Robinson', 'mrobinson@mail.com', '555-284-3972', '2023-03-11', 4),
('James', 'Walker', 'j1walker@mail.com', '555-487-1923', '2023-03-23', 4),
('Charlotte', 'Harris', 'chairy23@mail.com', '555-392-3847', '2023-04-05', 4),
('Benjamin', 'White', 'whiteben@mail.com', '555-183-4892', '2024-04-17', 4),
('Abigail', 'Allen', 'aaaaallen@mail.com', '555-283-8473', '2024-05-09', 4),
('Henry', 'Scott', 'hsc0tt@mail.com', '555-384-2983', '2024-05-21', 4),
('Emily', 'Nelson', 'enelly2@mail.com', '555-482-3849', '2024-06-04', 4),
('Daniel', 'Young', 'dyoung@mail.com', '555-372-9483', '2024-06-18', 4),
('Ella', 'Clark', 'ellclark@mail.com', '555-283-4928', '2024-07-02', 4),
('Alexander', 'Lewis', 'al3wis@mail.com', '555-492-1837', '2024-07-16', 4),
('Grace', 'Hall', 'grhall@mail.com', '555-837-4920', '2024-08-01', 4);

INSERT INTO team_member_training (employee_id, trained_usher, trained_box, trained_door, trained_concessions) VALUES
(13, TRUE, TRUE, TRUE, TRUE),  -- Ethan
(14, TRUE, TRUE, TRUE, TRUE),  -- Sophia
(15, TRUE, TRUE, TRUE, TRUE),  -- Lucas
(16, TRUE, TRUE, TRUE, TRUE),  -- Isabella
(17, TRUE, TRUE, TRUE, TRUE),  -- Mason
(18, TRUE, TRUE, TRUE, TRUE),  -- Mia
(19, TRUE, TRUE, TRUE, TRUE),  -- James
(20, TRUE, TRUE, TRUE, TRUE),    -- Charlotte
(21, TRUE, FALSE, TRUE, TRUE),    -- Benjamin
(22, TRUE, FALSE, TRUE, TRUE),    -- Abigail
(23, TRUE, FALSE, TRUE, FALSE),    -- Henry
(24, TRUE, FALSE, TRUE, FALSE),    -- Emily
(25, TRUE, FALSE, TRUE, FALSE),  -- Daniel
(26, TRUE, FALSE, FALSE, FALSE),  -- Ella
(27, TRUE, FALSE, FALSE, FALSE),  -- Alexander
(28, TRUE, FALSE, FALSE, FALSE);  -- Grace

SELECT e.employee_id, e.first_name, e.last_name, p.position_name
FROM employees e
JOIN positions p ON e.position_id = p.position_id;

SELECT e.first_name, e.last_name, t.trained_usher,t.trained_box, t.trained_door, t.trained_concessions
FROM employees e
JOIN team_member_training t ON e.employee_id = t.employee_id;

SELECT * FROM team_member_training;

