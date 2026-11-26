create database if not exists nexora_games;
use nexora_games;
create table admins(
    admin_id int auto_increment primary key,
    username varchar (100)not null unique,
    password varchar (255)not null,
    created_at timestamp default current_timestamp
);
create table categories(
    category_id int auto_increment primary key,
    name varchar(100)not null unique,
    description text
);
create table games(
    game_id int auto_increment primary key,
    category_id int not null,
    title varchar(150)not null,
    description text,
    developer varchar(150),
    platform varchar(150),
    price decimal(10,2)default 0.00,
    cover_image varchar(255),
    status enum('upcoming','released')default 'upcoming',
    is_featured tinyint(1)default 0,
    created_at timestamp default current_timestamp,
    foreign key (category_id) 
    references categories(category_id)
    on delete restrict
    on update cascade
    release_date date,
);
create table users(
    user_id int auto_increment primary key,
    name varchar(100)not null,
    email varchar (150)not null unique,
    password varchar(255)not null,
    created_at timestamp default current_timestamp
);
create table messages(
    message_id int auto_increment primary key,
    name varchar(100)not null,
    email varchar(150)not null,
    subject varchar(200)not null,
    message text not null,
    is_read tinyint(1)default 0,
    created_at timestamp default current_timestamp
);
insert into categories(name,description)values
('Action','Action packed combact and adventure'),
('Adventure','Exploration and story driven'),
('Racing','High speed racing and driving games'),
('Strategy','Tactical and strateegic games');

insert into games
(category_id, title, description, developer, platform, release_date, price, cover_image, status, is_featured)
values

(1, 'Shadow Strike', 'A futuristic combat game.',
'Nexora Studios', 'PC, PlayStation', '2026-02-15', 49.99, 'shadow-strike.jpg', 'released', 1),

(1, 'Cyber Warfare', 'A futuristic military shooter.',
'Nexora Studios', 'PC, Xbox', '2026-04-20', 39.99, 'cyber-warfare.jpg', 'released', 1),

(1, 'Dark Horizon', 'An action game set in a dystopian world.',
'Nexora Studios', 'PC', '2026-08-10', 29.99, 'dark-horizon.jpg', 'released', 0),

(2, 'Lost Kingdom', 'Explore an ancient forgotten kingdom.',
'Nexora Studios', 'PC, PlayStation', '2026-03-12', 44.99, 'lost-kingdom.jpg', 'released', 1),

(2, 'Mystic Lands', 'A fantasy adventure across magical lands.',
'Nexora Studios', 'PC, Xbox', '2027-01-15', 49.99, 'mystic-lands.jpg', 'upcoming', 1),

(2, 'The Last Explorer', 'Discover mysterious locations.',
'Nexora Studios', 'PC', '2026-09-18', 24.99, 'last-explorer.jpg', 'released', 0),

(3, 'Velocity X', 'A high-speed futuristic racing game.',
'Nexora Studios', 'PC, PlayStation', '2026-05-22', 34.99, 'velocity-x.jpg', 'released', 1),

(3, 'Street Legends', 'Compete in underground street races.',
'Nexora Studios', 'PC, Xbox', '2027-03-10', 39.99, 'street-legends.jpg', 'upcoming', 0),

(4, 'Empire Builders', 'Build and manage your own empire.',
'Nexora Studios', 'PC', '2026-06-14', 19.99, 'empire-builders.jpg', 'released', 0),

(4, 'War of Kingdoms', 'Lead armies and conquer territories.',
'Nexora Studios', 'PC', '2027-05-20', 29.99, 'war-of-kingdoms.jpg', 'upcoming', 1);