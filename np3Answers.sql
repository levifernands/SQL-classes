#1. Listar todos os tweets de um usuário

##SELECT * FROM user;

##************or****************

##SELECT * FROM tweet WHERE owner = 1;



#2.Listar todos os tweets de pessoas que um usuário segue

#SELECT tweet.*
#FROM tweet
#JOIN user_follows ON tweet.owner = user_follows.user_followed_id
#WHERE user_follows.user_follows_id = 1;


#3. LIsta todos os osuárip que um usuário segue

#SELECT user.*
#FROM user
#JOIN user_follows ON user.id = user_follows.user_followed_id
#WHERE user_follows.user_follows_id = 1;

#4.LIstar por quem esse usuário é seguido

#SELECT user.*
#FROM user
#JOIN user_follows ON user.id = user_follows.user_follows_id
#WHERE user_follows.user_followed_id = 1;

#5. Listar todos os tweet que tem "copa do mundo no texto"

#SELECT * FROM tweet WHERE content LIKE '%copa do mundo%';

#6.Listar todas as respostar de um determinado tweet (utilize o parent)

#SELECT * FROM tweet WHERE parent = 1;

