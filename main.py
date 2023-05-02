import mysql.connector


db = mysql.connector.connect(
	host="localhost",
	user="root",
	password="aluno",
	database="petshop"
)

c = db.cursor()
""" c.execute("CREATE TABLE pet (id int, nome varchar(50), tipo varchar(50), raça varchar(15), responsavel varchar(11), PRIMARY KEY (id),  FOREIGN KEY (responsavel) REFERENCES responsavel (cpf) )") """
""" c.execute("CREATE TABLE responsavel (nome varchar(50), cpf varchar(11), contato char(9), PRIMARY KEY(cpf))") """ 

""" pets = [
(1, 'Stupenda', 'cachorro',),
(2, 'Mandrake', 'gato'),
(3, 'Capricho', 'passaro'),
(4, 'Stupenda', 'cachorro'),
(5, 'Muddy River', 'gato',),
(6, 'Capricho', 'passaro')
] """

""" sql = "insert into turfe values (%s, %s, %s)" """

""" c.executemany(sql,turfes)
db.commit()
print(c.rowcount)
 """

c.close()
db.close()
