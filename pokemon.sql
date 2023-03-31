#a. Mostre todos os nomes de Pokémons em ordem alfabética

/* SELECT pok_name
FROM pokemon
ORDER BY pok_name; */

#b. Mostre todos os nomes de Pokémons em ordem contrária à alfabética	

/*SELECT pok_name
FROM pokemon
ORDER BY pok_name DESC;*/

#c. Mostre as habilidades que o Pokémon “charizard” possui.

/* SELECT abilities.abil_name
FROM abilities
JOIN abilities ON abilities.abil_id = pokemon_abilities.abil_id
JOIN pokemon ON pokemon_abilities.pok_id = pokemon.pok_id
WHERE pokemon.pok_name = "charizard";*/
#INCOMPLETO

#d. Mostrar todos os Pokémons que possuem o nome finalizado com “chu”.

/* SELECT pok_name
FROM pokemon
WHERE pok_name LIKE "%chu";*/

#e. Mostre os Pokémons que possuem a Habilidade chamada “lightning-rod”.

SELECT pok_name
FROM pokemon
JOIN pokemon_abilities ON pokemon.pok_id = abilities.pok_id
JOIN abilities ON pokemon_abilities.abil_id = abilities.abil_id
WHERE pokemon.pok_name LIKE "%chu"
AND abilities.abil_name = "lightning-rod";


#. Mostre os Pokémons que possuem a Habilidade chamada “lightning-rod” eapresentam o nome finalizado por “chu”.
#g. Mostre os nomes dos Pokémons do tipo fogo (“fire”).
#h. Quais são as estatísticas (base_stats) do “charizard”.
#i. Qual Pokémon possui habilidade “lightning-rod” e não é do tipo “elec

