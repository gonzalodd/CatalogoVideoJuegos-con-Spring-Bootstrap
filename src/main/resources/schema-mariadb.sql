drop table if exists videojuego;
drop table if exists distribuidor;

create table videojuego (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    descripcion varchar(3000),
    imagen_url varchar(500)
);

insert into videojuego
(id,    nombre,                    descripcion,                                                                                                                                                                                                                                        imagen_url) values
(1,     'Bioshock Infinite',       'La ultima entrega de la saga Biochock, ahora en una imperdible ciudad de ensue;o entre las nubes',                                                                                                                                                 'https://cdn.atomix.vg/wp-content/uploads/2019/08/bioshock-infinite-cover.jpg'),
(2,     'Insergency: Sandstorm',   'Es un FPS táctico por equipos basado en combates letales en espacios reducidos y multijugador centrado en objetivos. Experimenta la intensidad del combate moderno, en el que se premia la pericia y se gana sabiendo jugar en equipo.',           'https://i11a.3djuegos.com/juegos/12849/insurgency_sandstorm/fotos/ficha/insurgency_sandstorm-4646464.jpg'),
(3,     'The Witcher 3',           'Mientras la guerra se extiende por los Reinos del Norte, aceptarás el contrato de tu vida: encontrar a la niña de la profecía, un arma viviente que puede alterar el mundo tal y como lo conocemos.',                                              'https://i.pinimg.com/originals/cf/79/38/cf7938899105fcea34986743514e52b4.jpg'),
(4,     'Dragon Ball: Xenoverse',  'DRAGON BALL XENOVERSE revive los combates más famosos de la saga gracias a tu avatar, que lucha con Trunks y otros personajes. ¡El juego incluye Tokitoki City, una nueva mecánica de juego, animación de personajes y otras muchas funciones',    'https://vignette.wikia.nocookie.net/dragonballfanon/images/2/2d/Dragon_Ball_Xenoverse_cover_art.jpg/revision/latest/top-crop/width/360/height/450?cb=20150222220032&path-prefix=es'),
(5,     'CS:GO',                   'Counter-Strike: Global Offensive (CS: GO) amplía el juego de acción basado en el equipo que fue pionero cuando se lanzó hace 19 años.',                                                                                                            'https://cswarzone.com/wp-content/uploads/2018/11/csgo_cover.jpg'),
(6,     'League of Legends',       'League of Legends es un juego de estrategia por equipos en el que dos equipos conformados por cinco poderosos campeones se enfrentan para destruir la base del otro.',                                                                             'https://i.pinimg.com/474x/6f/d9/37/6fd9375e1a6632619056c4fb888122b9.jpg'),
(7,     'Paladins®',               'Acompaña a más de 25 millones de jugadores en Paladins, el shooter de fantasía gratis basado en equipos. Ejerce tus armas y desata poderes mágicos como un Campeón legendario del Reino',                                                          'https://static-cdn.jtvnw.net/ttv-boxart/Paladins.jpg'),
(8,     'Dota 2',                  'Cada día, millones de jugadores de todo el mundo entran en batalla como uno de los más de cien héroes de Dota. Y no importa si es su décima o su milésima hora de juego: siempre hay algo nuevo que descubrir.',                                   'https://e.snmc.io/lk/l/x/50fff81d84c83fbba024ccca90726fd1/7295201');


create table distribuidor (
    id int primary key auto_increment,
    nombre varchar(200) not null,
    sitio_web varchar(500)
);

insert into distribuidor 
(id,    nombre,                         sitio_web) values
(1,     '2K',                           'https://2k.com'),
(2,     'Focus Home Interactive',       'https://www.focus-home.com'),
(3,     'Thekla',                       null),
(4,     'Number One',                   null),
(5,     '505 Games',                    'https://505games.com'),
(6,     'Unknown Worlds Entertainment', 'https://unknownworlds.com'),
(7,     'Campo Santo',                  'https://www.camposanto.com');


alter table videojuego 
add column distribuidor_id int, 
add foreign key (distribuidor_id) references distribuidor(id);

update videojuego set distribuidor_id = 1 where id in (1,5);
update videojuego set distribuidor_id = 2 where id in (2);
update videojuego set distribuidor_id = 3 where id in (3);
update videojuego set distribuidor_id = 4 where id in (4);
update videojuego set distribuidor_id = 5 where id in (6);
update videojuego set distribuidor_id = 6 where id in (7);
update videojuego set distribuidor_id = 7 where id in (8);

alter table videojuego 
modify distribuidor_id int not null;