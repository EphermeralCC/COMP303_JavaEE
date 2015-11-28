CREATE SCHEMA `music_store` ;


CREATE TABLE `music_store`.`music_detail` (
  `music_id` VARCHAR(10) NOT NULL COMMENT '',
  `music_name` VARCHAR(45) NOT NULL COMMENT '',
  `artist_id` VARCHAR(10) NOT NULL COMMENT '',
  `length` INT NOT NULL COMMENT '',
  `price` DOUBLE NOT NULL COMMENT '',
  `description` VARCHAR(200) NOT NULL COMMENT '',
  `date` DATETIME NOT NULL COMMENT '',
  PRIMARY KEY (`music_id`)  COMMENT '');
  

CREATE TABLE `music_store`.`album` (
  `album_id` VARCHAR(10) NOT NULL COMMENT '',
  `album_name` VARCHAR(45) NOT NULL COMMENT '',
  `artist_id` VARCHAR(10) NOT NULL COMMENT '',
  `num_of_music` INT NOT NULL COMMENT '',
  `price` DOUBLE NOT NULL COMMENT '',
  PRIMARY KEY (`album_id`)  COMMENT '');
  

ALTER TABLE `music_store`.`music_detail` 
ADD COLUMN `album_id` VARCHAR(10) NOT NULL COMMENT '' AFTER `date`,
ADD INDEX `album_id_idx` (`album_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`music_detail` 
ADD CONSTRAINT `album_id`
  FOREIGN KEY (`album_id`)
  REFERENCES `music_store`.`album` (`album_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  

CREATE TABLE `music_store`.`artist` (
  `artist_id` VARCHAR(10) NOT NULL COMMENT '',
  `artist_name` VARCHAR(45) NOT NULL COMMENT '',
  `age` INT NOT NULL COMMENT '',
  `note` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`artist_id`)  COMMENT '');
  
  
  ALTER TABLE `music_store`.`music_detail` 
ADD INDEX `artist_id_idx` (`artist_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`music_detail` 
ADD CONSTRAINT `artist_id`
  FOREIGN KEY (`artist_id`)
  REFERENCES `music_store`.`artist` (`artist_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `music_store`.`album` 
ADD CONSTRAINT `artist_id2`
  FOREIGN KEY (`artist_id`)
  REFERENCES `music_store`.`artist` (`artist_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `music_store`.`music_detail` 
CHANGE COLUMN `album_id` `album_id` VARCHAR(10) NOT NULL COMMENT '' AFTER `length`,
CHANGE COLUMN `description` `description` VARCHAR(200) NULL COMMENT '' ,
ADD COLUMN `music_type` VARCHAR(45) NOT NULL COMMENT '' AFTER `date`;


ALTER TABLE `music_store`.`music_detail` 
CHANGE COLUMN `music_type` `music_type` VARCHAR(45) NOT NULL COMMENT '' AFTER `album_id`;


CREATE TABLE `music_store`.`order` (
  `order_id` VARCHAR(10) NOT NULL COMMENT '',
  `customer_id` VARCHAR(45) NOT NULL COMMENT '',
  `num_of_music` INT NOT NULL COMMENT '',
  `note` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`order_id`)  COMMENT '');


CREATE TABLE `music_store`.`customer` (
  `customer_id` VARCHAR(10) NOT NULL COMMENT '',
  `customer_name` VARCHAR(45) NOT NULL COMMENT '',
  `age` INT NOT NULL COMMENT '',
  `address` VARCHAR(45) NOT NULL COMMENT '',
  `phone` VARCHAR(45) NOT NULL COMMENT '',
  `email` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`customer_id`)  COMMENT '');


ALTER TABLE `music_store`.`order` 
ADD INDEX `customer_id_idx` (`customer_id` ASC)  COMMENT '';
ALTER TABLE `music_store`.`order` 
ADD CONSTRAINT `customer_id`
  FOREIGN KEY (`customer_id`)
  REFERENCES `music_store`.`customer` (`customer_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


CREATE TABLE `music_store`.`order_detail` (
  `order_detail_id` VARCHAR(10) NOT NULL COMMENT '',
  `order_id` VARCHAR(10) NOT NULL COMMENT '',
  `music_id` VARCHAR(10) NOT NULL COMMENT '',
  `quantity` INT NOT NULL COMMENT '',
  PRIMARY KEY (`order_detail_id`)  COMMENT '',
  INDEX `music_id2_idx` (`music_id` ASC)  COMMENT '',
  INDEX `order_id_idx` (`order_id` ASC)  COMMENT '',
  CONSTRAINT `music_id2`
    FOREIGN KEY (`music_id`)
    REFERENCES `music_store`.`music_detail` (`music_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `music_store`.`order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


ALTER TABLE `music_store`.`customer` 
ADD COLUMN `card_number` VARCHAR(45) NOT NULL COMMENT '' AFTER `email`;


ALTER TABLE `music_store`.`order_detail` 
ADD COLUMN `total_amount` DOUBLE NOT NULL COMMENT '' AFTER `quantity`;


