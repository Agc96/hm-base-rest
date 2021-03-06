-- MySQL Script generated by MySQL Workbench
-- vie 15 feb 2019 22:18:38 -05
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema HM_BASE
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema HM_BASE
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `HM_BASE` DEFAULT CHARACTER SET utf8mb4 ;
USE `HM_BASE` ;

-- -----------------------------------------------------
-- Table `HM_BASE`.`BASE_DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HM_BASE`.`BASE_DEPARTAMENTO` (
  `ID_DEPARTAMENTO` INT NOT NULL AUTO_INCREMENT,
  `COD_DEPARTAMENTO` VARCHAR(50) NOT NULL,
  `NOMBRE_DEPARTAMENTO` VARCHAR(100) NOT NULL,
  `ESTADO` TINYINT NOT NULL DEFAULT 1 COMMENT '0: Inactivo\n1: Activo',
  `FECHA_CREACION` TIMESTAMP NOT NULL DEFAULT NOW(),
  `USUARIO_CREACION` VARCHAR(50) NOT NULL,
  `FECHA_MODIFICACION` TIMESTAMP NULL,
  `USUARIO_MODIFICACION` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_DEPARTAMENTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HM_BASE`.`BASE_PROVINCIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HM_BASE`.`BASE_PROVINCIA` (
  `ID_PROVINCIA` INT NOT NULL AUTO_INCREMENT,
  `COD_PROVINCIA` VARCHAR(50) NOT NULL,
  `NOMBRE_PROVINCIA` VARCHAR(100) NOT NULL,
  `ID_DEPARTAMENTO` INT NOT NULL,
  `ESTADO` TINYINT NOT NULL DEFAULT 1 COMMENT '0: Inactivo\n1: Activo',
  `FECHA_CREACION` TIMESTAMP NOT NULL DEFAULT NOW(),
  `USUARIO_CREACION` VARCHAR(50) NOT NULL,
  `FECHA_MODIFICACION` TIMESTAMP NULL,
  `USUARIO_MODIFICACION` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_PROVINCIA`),
  INDEX `PROVINCIA_FK_DEPARTAMENTO_IDX` (`ID_DEPARTAMENTO` ASC),
  CONSTRAINT `PROVINCIA_FK_DEPARTAMENTO`
    FOREIGN KEY (`ID_DEPARTAMENTO`)
    REFERENCES `HM_BASE`.`BASE_DEPARTAMENTO` (`ID_DEPARTAMENTO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HM_BASE`.`BASE_DISTRITO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `HM_BASE`.`BASE_DISTRITO` (
  `ID_DISTRITO` INT NOT NULL AUTO_INCREMENT,
  `COD_DISTRITO` VARCHAR(50) NOT NULL,
  `NOMBRE_DISTRITO` VARCHAR(100) NOT NULL,
  `ID_PROVINCIA` INT NOT NULL,
  `ESTADO` TINYINT NOT NULL DEFAULT 1 COMMENT '0: Inactivo\n1: Activo',
  `FECHA_CREACION` TIMESTAMP NOT NULL DEFAULT NOW(),
  `USUARIO_CREACION` VARCHAR(50) NOT NULL,
  `FECHA_MODIFICACION` TIMESTAMP NULL,
  `USUARIO_MODIFICACION` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_DISTRITO`),
  INDEX `DISTRITO_FK_PROVINCIA_IDX` (`ID_PROVINCIA` ASC),
  CONSTRAINT `DISTRITO_FK_PROVINCIA`
    FOREIGN KEY (`ID_PROVINCIA`)
    REFERENCES `HM_BASE`.`BASE_PROVINCIA` (`ID_PROVINCIA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'HM_BASE_USER' IDENTIFIED BY 'Heartmole96';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `HM_BASE`.* TO 'HM_BASE_USER';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
