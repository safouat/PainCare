-- Create User table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    avatar VARCHAR(255),
    birthDay DATE
);

-- Create PainTrack table
CREATE TABLE paintracks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    level INT NOT NULL,
    user_id INT NOT NULL
);

-- Create PainTrackParam
CREATE TABLE paintrackparams (
	id INT AUTO_INCREMENT PRIMARY KEY,
	paintrack_id INT NOT NULL,
	param VARCHAR(100) NOT NULL,
	value VARCHAR(100) NOT NULL
)

-- Create Diagnostic table
CREATE TABLE diagnostics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    answers VARCHAR(255) DEFAULT "",
    user_id INT NOT NULL
);

-- Create Blog table
CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    image VARCHAR(255),
    date DATE DEFAULT (CURRENT_DATE),
    user_id INT NOT NULL
);

-- Create Comment table
CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date TIMESTAMP DEFAULT NOW(),
    content TEXT NOT NULL,
    blog_id INT NOT NULL
    user_id INT NOT NULL
);


-- Add foreign key constraints to the tables
ALTER TABLE paintracks
ADD FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE paintrackparams
ADD FOREIGN KEY (paintrack_id) REFERENCES paintracks(id);

ALTER TABLE diagnostics
ADD FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE blogs
ADD FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE comments
ADD FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE comments
ADD FOREIGN KEY (blog_id) REFERENCES blogs(id);