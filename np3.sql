use twitter;

CREATE TABLE user_likes (
	user_id INT,
    tweet_id int,
	PRIMARY KEY(user_id, tweet_id)
);

CREATE TABLE user (
	id INT,
    nickname VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,
		PRIMARY KEY(id)
);


CREATE TABLE tweet (
	id INT,
    content TEXT NOT NULL,
    retweet TINYINT(1),
    owner INT NOT NULL,
    parent INT,
		PRIMARY KEY(id),
		FOREIGN KEY(owner) REFERENCES user(id),
        FOREIGN KEY(parent) REFERENCES tweet(id)
        
);


CREATE TABLE user_follows (
	user_follows_id INT,
    user_followed_id INT,
		PRIMARY KEY(user_follows_id, user_followed_id),
		FOREIGN KEY (user_follows_id) REFERENCES user(id),
        FOREIGN KEY (user_followed_id) REFERENCES user(id)
);


	
