DROP DATABASE IF EXISTS onchat;
CREATE DATABASE onchat;
USE onchat;

drop table if exists users;
create table users (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120),
  interest VARCHAR(120),
  age BIGINT unsigned,
  email VARCHAR(120) UNIQUE,
  phone BIGINT UNSIGNED UNIQUE,
  
  password_hash VARCHAR(100),
  INDEX user_name_interest_idx (name, interest)
 );

drop table if exists info_user;
create table info_user(
  id SERIAL,
  user_id BIGINT unsigned NOT NULL,
  interest_id BIGINT unsigned NOT NULL,
  criterion_id BIGINT UNSIGNED NOT NULL,
  create_at DATETIME DEFAULT (NOW()),
  
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (interest_id) REFERENCES users(id),
  FOREIGN KEY (criterion_id) REFERENCES users(id)
);

drop table if exists chats;
create table chats (
  id SERIAL,
  name VARCHAR(150),
  interest varchar(50),
  criterion varchar(120),
  admin_user_id BIGINT UNSIGNED NOT NULL,
  create_at DATETIME DEFAULT (NOW()),
  INDEX chats_name_idx(name),
  FOREIGN KEY (admin_user_id) REFERENCES users(id)
);

drop table if exists chat_types;
create table chat_types (
  id SERIAL,
  name VARCHAR(150),
  interest_id BIGINT UNSIGNED NOT NULL,
  criterion_id BIGINT UNSIGNED NOT NULL,
  admin_user_id BIGINT UNSIGNED NOT NULL,
  create_at DATETIME DEFAULT (NOW()),
  INDEX chats_name_idx(name),
  FOREIGN KEY (interest_id) REFERENCES chats(id),
  FOREIGN KEY (criterion_id) REFERENCES chats(id)
);

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id SERIAL,
  from_user_id BIGINT UNSIGNED NOT NULL,
  to_chat_id BIGINT UNSIGNED NOT NULL,
  body TEXT,
  create_at DATETIME DEFAULT (NOW()),
  FOREIGN KEY (from_user_id) references users(id),
  FOREIGN KEY (to_chat_id) references chats(id)
);

DROP TABLE IF EXISTS frends;
CREATE TABLE frends (
  initiator_user_id BIGINT UNSIGNED NOT NULL,
  target_user_id BIGINT UNSIGNED NOT NULL,
  `status` ENUM ('requested', 'approved', 'declined', 'unfriended'),
  requested_at DATETIME DEFAULT (NOW()),
  updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
  criterion varchar(120),
  interest varchar(50),
  PRIMARY KEY (initiator_user_id, target_user_id),
  FOREIGN KEY (initiator_user_id) REFERENCES users(id),
  FOREIGN KEY (target_user_id) REFERENCES users(id),
  CHECK (initiator_user_id <> target_user_id)
);
DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id SERIAL,
  namme VARCHAR(255),
  created_at DATETIME DEFAULT (NOW()),
  updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id SERIAL,
  media_type_id BIGINT UNSIGNED NOT NULL,
  user_id BIGINT UNSIGNED NOT NULL,
  body TEXT,
  filename VARCHAR(255),
  `size` INT,
  metadata JSON,
  created_at DATETIME DEFAULT (NOW()),
  updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id SERIAL,
  user_id BIGINT UNSIGNED NOT NULL,
  media_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT (NOW()),

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  media_id BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (media_id) REFERENCES media(id)
);



