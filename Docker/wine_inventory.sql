
-- This table contains all relevant wine info

CREATE TABLE wines (
    id SERIAL PRIMARY KEY,
    wine_name TEXT NOT NULL UNIQUE,
    varietal_id TEXT NOT NULL,
    color_id INT,
    region_id INT
)

-- List of users

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE NOT NULL
)

-- General wine attribute tables


CREATE TABLE colors (
    id SERIAL PRIMARY KEY,
    color TEXT NOT NULL
)

CREATE TABLE regions (
    id SERIAL PRIMARY KEY,
    country TEXT NOT NULL
)

-- List of users' selections



CREATE TABLE users_selections (
    user_id INT NOT NULL,
    selection_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY(user_id, selection_id)
)




