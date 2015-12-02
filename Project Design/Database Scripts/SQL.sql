CREATE SCHEMA `music_store` ;


CREATE TABLE `music_store`.`carts` (
  `record_id` VARCHAR(10) NOT NULL COMMENT '',
  `cart_id` VARCHAR(10) NOT NULL COMMENT '',
  `album_id` VARCHAR(10) NOT NULL COMMENT '',
  `count` INT NOT NULL COMMENT '',
  `date_created` DATE NOT NULL COMMENT '',
  PRIMARY KEY (`record_id`)  COMMENT '');


CREATE TABLE `music_store`.`order_details` (
  `order_detail_id` VARCHAR(10) NOT NULL COMMENT '',
  `order_id` VARCHAR(10) NOT NULL COMMENT '',
  `album_id` VARCHAR(10) NOT NULL COMMENT '',
  `quantity` INT NOT NULL COMMENT '',
  `unit_price` DOUBLE NOT NULL COMMENT '',
  PRIMARY KEY (`order_detail_id`)  COMMENT '');


CREATE TABLE `music_store`.`orders` (
  `order_id` VARCHAR(10) NOT NULL COMMENT '',
  `order_date` DATE NOT NULL COMMENT '',
  `username` VARCHAR(45) NOT NULL COMMENT '',
  `first_name` VARCHAR(45) NOT NULL COMMENT '',
  `last_name` VARCHAR(45) NOT NULL COMMENT '',
  `address` VARCHAR(45) NOT NULL COMMENT '',
  `city` VARCHAR(45) NOT NULL COMMENT '',
  `state` VARCHAR(45) NOT NULL COMMENT '',
  `postal_code` VARCHAR(45) NOT NULL COMMENT '',
  `country` VARCHAR(45) NOT NULL COMMENT '',
  `phone` VARCHAR(45) NOT NULL COMMENT '',
  `email` VARCHAR(45) NOT NULL COMMENT '',
  `total` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`order_id`)  COMMENT '');


CREATE TABLE `music_store`.`albums` (
  `album_id` VARCHAR(10) NOT NULL COMMENT '',
  `genre_id` VARCHAR(10) NOT NULL COMMENT '',
  `artist_id` VARCHAR(10) NOT NULL COMMENT '',
  `title` VARCHAR(45) NOT NULL COMMENT '',
  `price` DOUBLE NOT NULL COMMENT '',
  `album_art_url` VARCHAR(100) NULL COMMENT '',
  PRIMARY KEY (`album_id`)  COMMENT '');


CREATE TABLE `music_store`.`artists` (
  `artist_id` VARCHAR(10) NOT NULL COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`artist_id`)  COMMENT '');


CREATE TABLE `music_store`.`genres` (
  `genre_id` VARCHAR(10) NOT NULL COMMENT '',
  `name` VARCHAR(45) NOT NULL COMMENT '',
  `description` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`genre_id`)  COMMENT '');


ALTER TABLE `music_store`.`albums` 
ADD INDEX `artist_id_idx` (`artist_id` ASC)  COMMENT '',
ADD INDEX `genre_id_idx` (`genre_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`albums` 
ADD CONSTRAINT `artist_id`
  FOREIGN KEY (`artist_id`)
  REFERENCES `music_store`.`artists` (`artist_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `genre_id`
  FOREIGN KEY (`genre_id`)
  REFERENCES `music_store`.`genres` (`genre_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `music_store`.`carts` 
ADD INDEX `album_id_idx` (`album_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`carts` 
ADD CONSTRAINT `album_id`
  FOREIGN KEY (`album_id`)
  REFERENCES `music_store`.`albums` (`album_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `music_store`.`order_details` 
ADD INDEX `album_id2_idx` (`album_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`order_details` 
ADD CONSTRAINT `album_id2`
  FOREIGN KEY (`album_id`)
  REFERENCES `music_store`.`albums` (`album_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `music_store`.`order_details` 
ADD INDEX `order_id_idx` (`order_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`order_details` 
ADD CONSTRAINT `order_id`
  FOREIGN KEY (`order_id`)
  REFERENCES `music_store`.`orders` (`order_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


