-- Inserir usuários
INSERT INTO user (id, nickname, email, password) VALUES
(1, '@user1', 'user1@example.com', 'password1'),
(2, '@user2', 'user2@example.com', 'password2'),
(3, '@user3', 'user3@example.com', 'password3'),
(4, '@user4', 'user4@example.com', 'password4');

-- Inserir tweets
INSERT INTO tweet (id, content, retweet, owner, parent) VALUES
(1, 'Primeiro tweet do user1', 0, 1, NULL),
(2, 'Tweet interessante', 0, 2, NULL),
(3, 'Gostei desse tweet', 0, 1, NULL),
(4, 'Seguindo a tendência', 0, 3, NULL),
(5, 'Copiando outro tweet', 0, 4, NULL),
(6, 'Resposta ao tweet 1', 0, 2, 1),
(7, 'Resposta ao tweet 1 também', 0, 3, 1),
(8, 'Resposta ao tweet 3', 0, 2, 3),
(9, 'Resposta ao tweet 2', 0, 4, 2);

-- Inserir relações de follow
INSERT INTO user_follows (user_follows_id, user_followed_id) VALUES
(1, 2),
(1, 3),
(2, 4),
(3, 4),
(4, 1),
(4, 2);

-- Inserir likes de usuários em tweets
INSERT INTO user_likes (user_id, tweet_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(3, 2),
(4, 1),
(4, 3);
