

1- select * from user;

2- select * from item;

3- select i.name from item i, buy b, user_transation ut
where ut.id_sender = 9 and i.id = b.id_item and ut.id = b.id_trans;

4- select u.nome, sum(ut.amount) as somatorio
from user u, user_transation ut
where u.id = ut.id_sender
group by u.nome;

5- select u.nome, sum(ut.amount) as somatorio
from user u, user_transation ut
where u.id = ut.id_sender
group by u.nome having somatorio>500;

6- select u.nome, count(b.amount) as quantidade
from user u, user_transation ut, buy b
where u.id = ut.id_sender and ut.id = b.id_trans 
group by nome having quantidade > 7;

7- select u.nome
from user u, user_transation ut
where u.id not in (select u.id from user u, user_transation ut 
where u.id = ut.id_sender);

8- select ut.trans_date, sum(ut.amount) as total
from user_transation ut
group by ut.trans_date;


https://uploadnow.io/files/w32KchZ

https://uploadnow.io/f/w32KchZ