CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE candidate (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id) name VARCHAR(255) NOT NULL,
);

CREATE TABLE candidate_status (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cid_id INT NOT NULL,
  FOREIGN KEY (cid_id) REFERENCES candidate(id),
  status VARCHAR(100) NOT NULL,
  statusUpdatedAt DATE NOT NULL
);

INSERT INTO
  users (name)
VALUES
  ('Neha'),
  ('priya'),
  ('Ishika'),
  ('Rahul');

INSERT INTO
  candidate (user_id, name)
VALUES
  (4, 'priyanka');

INSERT INTO
  candidate (user_id, name)
VALUES
  (4, 'manish');

INSERT INTO
  candidate (user_id, name)
VALUES
  (4, 'vedant');

INSERT INTO
  candidate_status (cid_id, status, statusUpdatedAt)
VALUES
  (1, 'joined', '2023-03-24'),
  (2, 'joined', '2022-12-12'),
  (3, 'interview', '2023-06-28');