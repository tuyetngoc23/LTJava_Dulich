-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dulichyenngocdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dulichyenngocdb` ;

-- -----------------------------------------------------
-- Schema dulichyenngocdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dulichyenngocdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci ;
USE `dulichyenngocdb` ;

-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`user` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`user` (
  `id` INT  AUTO_INCREMENT,
  `status` BOOLEAN NULL DEFAULT 0,
  `gioiTinh` NVARCHAR(50) ,
  `passWord` NVARCHAR(45) NULL,
  `join_date` DATE ,
  `sdt` nvarchar(45) NULL DEFAULT NULL,
  `ngaySinh` DATE NULL,
  `username` NVARCHAR(50)  DEFAULT NULL,
  `avatar` NVARCHAR(50) NULL DEFAULT NULL,
  `diaChi` NVARCHAR(100) NULL DEFAULT NULL,
  `hoTen` nvarchar(100) NULL DEFAULT NULL,
  `is_active` boolean NULL DEFAULT NULL,
  `user_role` boolean NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`customer` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`customer` (
  `id` INT   AUTO_INCREMENT,
  `binhLuan` NVARCHAR(255) DEFAULT NULL,
  `soLuotThich` INT NULL DEFAULT NULL,
  `userid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`userid`)
    REFERENCES `dulichyenngocdb`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`employee` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`employee` (
  `id` INT AUTO_INCREMENT,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`)
    REFERENCES `dulichyenngocdb`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`tintuc`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`tintuc` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`tintuc` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `moTaNgan` NVARCHAR(255)  DEFAULT NULL,
  `moTaDai` NVARCHAR(255) DEFAULT NULL,
  `ngayDang` DATE NULL DEFAULT NULL,
  `trangThai` BOOLEAN NULL DEFAULT NULL,
  `anh` NVARCHAR(255) NULL DEFAULT NULL,
  `viewer` INT NULL DEFAULT NULL,
  `emloyee_id` INT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`emloyee_id`)
    REFERENCES `dulichyenngocdb`.`employee` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`binhluan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`binhluan` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`binhluan` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `ngayBinhLuan` DATE NULL DEFAULT NULL,
  `noiDung` NVARCHAR(255) DEFAULT NULL,
  `customerId` INT NULL DEFAULT NULL,
  `tintuc_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`customerId`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
    FOREIGN KEY (`tintuc_id`)
    REFERENCES `dulichyenngocdb`.`tintuc` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`thongtinlienlac`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`thongtinlienlac` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`thongtinlienlac` (
  `id` INT NOT NULL  AUTO_INCREMENT,
  `tenNguoiDi` NVARCHAR(100) DEFAULT NULL,
  `sdt` NVARCHAR(45) NULL DEFAULT NULL,
  `diaChi` NVARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`booking` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`booking` (
  `id` INT AUTO_INCREMENT,
  `customer_id` INT NULL DEFAULT NULL,
  `employee_id` INT NULL DEFAULT NULL,
  `bookingDay` DATE NULL DEFAULT NULL,
  `totalMoney` DECIMAL(10,0) NULL DEFAULT NULL,
  `soNguoiDi` INT NULL DEFAULT NULL,
  `thongTinLienLac_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
    FOREIGN KEY (`employee_id`)
    REFERENCES `dulichyenngocdb`.`employee` (`id`),
    FOREIGN KEY (`thongTinLienLac_id`)
    REFERENCES `dulichyenngocdb`.`thongtinlienlac` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`tinhthanh`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`tinhthanh` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`tinhthanh` (
  `id` INT  AUTO_INCREMENT,
  `ten` NVARCHAR(255)DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`diadanh`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`diadanh` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`diadanh` (
  `id` INT  AUTO_INCREMENT,
  `ten` NVARCHAR(255) DEFAULT NULL,
  `tinhthanh_id` INT NULL DEFAULT NULL,
  `moTa` NVARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`tinhthanh_id`)
    REFERENCES `dulichyenngocdb`.`tinhthanh` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`loaitour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`loaitour` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`loaitour` (
  `id` INT  AUTO_INCREMENT,
  `content` NVARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`tour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`tour` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`tour` (
  `id` INT AUTO_INCREMENT,
  `ten` NVARCHAR(100)  DEFAULT NULL,
  `gia` DECIMAL(10,0) NULL DEFAULT NULL,
  `diemDen_id` INT NULL DEFAULT NULL,
  `diemDi_id` INT NULL DEFAULT NULL,
  `gioiHanNDi` INT NULL DEFAULT NULL,
  `thoiGian` DATE NULL DEFAULT NULL,
  `ngayKhoiHanh` DATE NULL DEFAULT NULL,
  `loaiTour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`diemDen_id`)
    REFERENCES `dulichyenngocdb`.`diadanh` (`id`),
    FOREIGN KEY (`loaiTour_id`)
    REFERENCES `dulichyenngocdb`.`loaitour` (`id`),
    FOREIGN KEY (`diemDi_id`)
    REFERENCES `dulichyenngocdb`.`tinhthanh` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`chitietdattour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`chitietdattour` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`chitietdattour` (
  `id` INT  AUTO_INCREMENT,
  `ngayBD` DATE NULL DEFAULT NULL,
  `booking_id` INT NULL DEFAULT NULL,
  `tour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`booking_id`)
    REFERENCES `dulichyenngocdb`.`booking` (`id`),
    FOREIGN KEY (`tour_id`)
    REFERENCES `dulichyenngocdb`.`tour` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`luatuoi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`luatuoi` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`luatuoi` (
  `id` INT  AUTO_INCREMENT,
  `doTuoi` NVARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`thich`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`thich` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`thich` (
  `id` INT  AUTO_INCREMENT,
  `trangThai` BOOLEAN NULL,
  `customerId` INT NULL DEFAULT NULL,
  `tintuc_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`customerId`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
    FOREIGN KEY (`tintuc_id`)
    REFERENCES `dulichyenngocdb`.`tintuc` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`ticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`ticket` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`ticket` (
  `id` INT  AUTO_INCREMENT,
  `luaTuoi_id` INT NULL DEFAULT NULL,
  `booking_id` INT NULL DEFAULT NULL,
  `tour_id` INT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`booking_id`)
    REFERENCES `dulichyenngocdb`.`booking` (`id`),
    FOREIGN KEY (`luaTuoi_id`)
    REFERENCES `dulichyenngocdb`.`luatuoi` (`id`),
    FOREIGN KEY (`tour_id`)
    REFERENCES `dulichyenngocdb`.`tour` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
