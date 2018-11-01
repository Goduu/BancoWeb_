-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bancodb
-- -----------------------------------------------------
-- base de dados do banco

-- -----------------------------------------------------
-- Schema bancodb
--
-- base de dados do banco
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bancodb` ;
USE `bancodb` ;

-- -----------------------------------------------------
-- Table `bancodb`.`TCLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancodb`.`TCLIENTE` (
  `IDCLIENTE` INT NOT NULL,
  `NOMCLIENTE` VARCHAR(45) NOT NULL,
  `NUM_CONTA_CLIENTE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IDCLIENTE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancodb`.`TCONTA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancodb`.`TCONTA` (
  `IDCONTA` INT NOT NULL AUTO_INCREMENT,
  `IDCLIENTE` INT NOT NULL,
  `DES_NUMERO` VARCHAR(45) NOT NULL,
  `DES_TIPO` VARCHAR(45) NOT NULL,
  `VAL_SALDO` DOUBLE NOT NULL,
  PRIMARY KEY (`IDCONTA`),
  INDEX `IDCLIENTE_idx` (`IDCLIENTE` ASC) VISIBLE,
  CONSTRAINT `IDCLIENTE`
    FOREIGN KEY (`IDCLIENTE`)
    REFERENCES `bancodb`.`TCLIENTE` (`IDCLIENTE`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bancodb`.`TEXTRATO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bancodb`.`TEXTRATO` (
  `IDTEXTRATO` INT NOT NULL AUTO_INCREMENT,
  `TIPO_OPERACAO` VARCHAR(45) NULL,
  `VALOR` DOUBLE NOT NULL,
  `DAT_ACAO` DATETIME NOT NULL,
  `IDCONTA_CLIENTE` INT NOT NULL,
  PRIMARY KEY (`IDTEXTRATO`),
  INDEX `IDCONTA_CLIENTE_idx` (`IDCONTA_CLIENTE` ASC) VISIBLE,
  CONSTRAINT `IDCONTA_CLIENTE`
    FOREIGN KEY (`IDCONTA_CLIENTE`)
    REFERENCES `bancodb`.`TCONTA` (`IDCONTA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
