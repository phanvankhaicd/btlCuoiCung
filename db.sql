-- MySQL Script generated by MySQL Workbench
-- Mon Dec 28 00:22:42 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_thue_xe
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_thue_xe
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_thue_xe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_thue_xe` ;

-- -----------------------------------------------------
-- Table `db_thue_xe`.`tbldiachi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tbldiachi` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sonha` VARCHAR(45) NULL DEFAULT NULL,
  `xompho` VARCHAR(45) NULL DEFAULT NULL,
  `phuongxa` VARCHAR(45) NULL DEFAULT NULL,
  `quanhuyen` VARCHAR(45) NULL DEFAULT NULL,
  `tinhtp` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblcuahang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblcuahang` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  `iddiachi` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblcuahang_tbldiachi_idx` (`iddiachi` ASC) VISIBLE,
  CONSTRAINT `fk_tblcuahang_tbldiachi`
    FOREIGN KEY (`iddiachi`)
    REFERENCES `db_thue_xe`.`tbldiachi` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblhangxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblhangxe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  `idcuahang` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblhangxe_idx` (`idcuahang` ASC) VISIBLE,
  CONSTRAINT `fk_tblhangxe_tblcuahang`
    FOREIGN KEY (`idcuahang`)
    REFERENCES `db_thue_xe`.`tblcuahang` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tbldongxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tbldongxe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  `idhangxe` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_dongxe_tblhangxe_idx` (`idhangxe` ASC) VISIBLE,
  CONSTRAINT `fk_dongxe_tblhangxe`
    FOREIGN KEY (`idhangxe`)
    REFERENCES `db_thue_xe`.`tblhangxe` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblnguoi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblnguoi` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ho` VARCHAR(45) NULL DEFAULT NULL,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `dem` VARCHAR(45) NULL DEFAULT NULL,
  `ngaysinh` DATE NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `sdt` VARCHAR(45) NULL DEFAULT NULL,
  `ghichu` VARCHAR(45) NULL DEFAULT NULL,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  `role` INT NULL DEFAULT NULL,
  `iddiachi` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblnguoi_tbldiachi_idx` (`iddiachi` ASC) VISIBLE,
  CONSTRAINT `fk_tblnguoi_tbldiachi`
    FOREIGN KEY (`iddiachi`)
    REFERENCES `db_thue_xe`.`tbldiachi` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblhopdong`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblhopdong` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  `tiencoc` DOUBLE NULL DEFAULT NULL,
  `loaitien` VARCHAR(45) NULL DEFAULT NULL,
  `ngaythue` DATE NULL DEFAULT NULL,
  `ngaytra` DATE NULL DEFAULT NULL,
  `idkhachhang` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblhopdong_tblnguoi_idx` (`idkhachhang` ASC) VISIBLE,
  CONSTRAINT `fk_tblhopdong_tblkhach`
    FOREIGN KEY (`idkhachhang`)
    REFERENCES `db_thue_xe`.`tblnguoi` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tbltaisan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tbltaisan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblhopdongtaisan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblhopdongtaisan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idhopdong` INT NULL DEFAULT NULL,
  `idtaisan` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblhopdongtaisan_tblhopdong_idx` (`idhopdong` ASC) VISIBLE,
  INDEX `fk_tblhopdongtaisan_tbltaisan_idx` (`idtaisan` ASC) VISIBLE,
  CONSTRAINT `fk_tblhopdongtaisan_tblhopdong`
    FOREIGN KEY (`idhopdong`)
    REFERENCES `db_thue_xe`.`tblhopdong` (`id`),
  CONSTRAINT `fk_tblhopdongtaisan_tbltaisan`
    FOREIGN KEY (`idtaisan`)
    REFERENCES `db_thue_xe`.`tbltaisan` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblxe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL DEFAULT NULL,
  `mota` VARCHAR(45) NULL DEFAULT NULL,
  `iddongxe` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblxe_tbldongxe_idx` (`iddongxe` ASC) VISIBLE,
  CONSTRAINT `fk_tblxe_tbldongxe`
    FOREIGN KEY (`iddongxe`)
    REFERENCES `db_thue_xe`.`tbldongxe` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `db_thue_xe`.`tblhopdongxe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_thue_xe`.`tblhopdongxe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idhopdong` INT NULL DEFAULT NULL,
  `idxe` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tblhopdongxe_tblhopdong_idx` (`idhopdong` ASC) VISIBLE,
  INDEX `fk_tblhopdongxe_tblxe_idx` (`idxe` ASC) VISIBLE,
  CONSTRAINT `fk_tblhopdongxe_tblhopdong`
    FOREIGN KEY (`idhopdong`)
    REFERENCES `db_thue_xe`.`tblhopdong` (`id`),
  CONSTRAINT `fk_tblhopdongxe_tblxe`
    FOREIGN KEY (`idxe`)
    REFERENCES `db_thue_xe`.`tblxe` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
