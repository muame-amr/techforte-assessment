-- DDL

-- Create the team table
CREATE TABLE team (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create the player table
CREATE TABLE player (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    team_id INT REFERENCES team(id)
);

-- Create the player_match_stat table
CREATE TABLE player_match_stat (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES player(id),
    match_date DATE NOT NULL,
    score INT,
    assist INT
);
