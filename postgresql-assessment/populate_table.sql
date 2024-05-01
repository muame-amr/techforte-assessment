-- DML

-- Insert data into the team table
INSERT INTO team (name) VALUES ('Chicago Bulls'), ('Miami Heat'), ('Los Angeles Lakers'), ('Golden State Warriors');

-- Insert data into the player table
INSERT INTO player (name, team_id) VALUES
  ('Coby White', 1),
  ('Andre Drummond', 1),
  ('Jimmy Butler', 2),
  ('Tyler Herro', 2),
  ('LeBron James', 3),
  ('Anthony Davis', 3),
  ('Stephen Curry', 4),
  ('Klay Thompson', 4),
  ('Michael Jordan', 1),
  ('Magic Johnson', 3);

-- Insert data into the player_match_stat table
INSERT INTO player_match_stat (player_id, match_date, score, assist) VALUES
  (1, '2020-04-01', 10, 2),
  (1, '2021-04-05', 8, 1),
  (2, '2020-04-01', 12, 3),
  (2, '2021-04-10', 9, 2),
  (5, '2020-04-15', 25, 6),
  (3, '2020-04-01', 11, 2),
  (3, '2021-04-05', 9, 1),
  (4, '2020-04-10', 10, 3),
  (4, '2021-04-15', 8, 2),
  (6, '2020-04-01', 30, 8),
  (6, '2021-04-05', 28, 5),
  (7, '2020-04-10', 22, 7),
  (7, '2021-04-15', 26, 6),
  (10, '2022-04-01', 35, 7),
  (8, '2020-04-01', 32, 9),
  (8, '2021-04-05', 30, 6),
  (9, '2020-04-10', 28, 7),
  (9, '2021-04-15', 25, 5);