-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema reto_api
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema reto_api
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reto_api` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema retoapi
-- -----------------------------------------------------
USE `reto_api` ;

-- -----------------------------------------------------
-- Table `reto_api`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reto_api`.`post` (
  `idpost` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `contenido` VARCHAR(45) NULL,
  PRIMARY KEY (`idpost`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `reto_api`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `reto_api`.`comments` (
  `idcomments` INT NOT NULL AUTO_INCREMENT,
  `comcontent` VARCHAR(45) NULL,
  `post_idpost` INT NOT NULL,
  PRIMARY KEY (`idcomments`),
  INDEX `fk_comments_post_idx` (`post_idpost` ASC) VISIBLE,
  CONSTRAINT `fk_comments_post`
    FOREIGN KEY (`post_idpost`)
    REFERENCES `reto_api`.`post` (`idpost`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



-- Insert 1---
INSERT INTO
  `reto_api`.`post` (`nombre`, `contenido`)
VALUES
  ('Post 1', 'Contenido del post 1');
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 1 para el post 1', LAST_INSERT_ID());
-- Insert 2
INSERT INTO
  `reto_api`.`post` (`nombre`, `contenido`)
VALUES
  ('Post 2', 'Contenido del post 2');
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 1 para el post 2', LAST_INSERT_ID());
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 2 para el post 2', LAST_INSERT_ID());
-- Insert 3
INSERT INTO
  `reto_api`.`post` (`nombre`, `contenido`)
VALUES
  ('Post 3', 'Contenido del post 3');
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 1 para el post 3', LAST_INSERT_ID());
-- Insert 4
INSERT INTO
  `reto_api`.`post` (`nombre`, `contenido`)
VALUES
  ('Post 4', 'Contenido del post 4');
-- Insert 5
INSERT INTO
  `reto_api`.`post` (`nombre`, `contenido`)
VALUES
  ('Post 5', 'Contenido del post 5');
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 1 para el post 5', LAST_INSERT_ID());
INSERT INTO
  `reto_api`.`comments` (`comcontent`, `post_idpost`)
VALUES
  ('Comentario 2 para el post 5', LAST_INSERT_ID());