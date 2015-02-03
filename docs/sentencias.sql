SELECT * FROM users;

SELECT name, email, password FROM users;

SELECT * FROM users WHERE email='kira@hot';

SELECT * FROM users WHERE email LIKE 'k%';

SELECT * FROM users WHERE email ORDER BY email;

SELECT * FROM users ORDER BY email DESC;

SELECT * FROM users ORDER BY email DESC, password DESC;

SELECT count(*) FROM users;

SELECT count(*) AS Numuser FROM users;

SELECT name as Nombre, email as miEmail FROM users;

SELECT name, city FROM users, cities WHERE users.cities_idcity = cities.idcity;

SELECT name, cities.city FROM users INNER JOIN cities ON users.cities_idcity = cities.idcity;

SELECT name, cities.city, gender FROM users INNER JOIN cities ON users.cities_idcity = cities.idcity INNER JOIN genders ON genders.idgender = users.genders_idgender;

SELECT * FROM cities;

-- Usuarios que están en Barcelona
SELECT name, email, city FROM users INNER JOIN cities ON users.cities_idcity = cities.idcity WHERE cities.city = 'Barcelona';

-- Ciudades que no tienen Usuarios
SELECT cities.city, users.name FROM cities LEFT JOIN users ON users.cities_idcity = cities.idcity where isnull(name);



-- Usuarios y sus hobbies
SELECT users.name, hobbies.hobby FROM users
INNER JOIN users_has_hobbies ON users_iduser = users.iduser 
INNER JOIN hobbies ON hobbies.idhobbie = hobbies_idhobbie 
ORDER BY users.name;

-- Usuarios con hobbies separados por comas
SELECT users.name, hobbies.hobby, group_concat(hobbies.hobby) FROM users
INNER JOIN users_has_hobbies ON users_iduser = users.iduser 
INNER JOIN hobbies ON hobbies.idhobbie = hobbies_idhobbie 
GROUP BY iduser;


INSERT INTO cities (city) VALUES ('Barracas');

INSERT INTO users (iduser, name, email, password, cities_idcity, genders_idgender) VALUES ('usuario5', '5', '5', '5', 1, 1);