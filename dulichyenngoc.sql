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
  `id` INT NOT NULL,
  `status` TINYINT(1) NULL DEFAULT NULL,
  `gioiTinh` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `passWord` VARCHAR(45) NULL DEFAULT NULL,
  `join_date` DATE NULL DEFAULT NULL,
  `sdt` VARCHAR(45) NULL DEFAULT NULL,
  `ngaySinh` DATE NULL DEFAULT NULL,
  `username` VARCHAR(50) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `avatar` VARCHAR(50) NULL DEFAULT NULL,
  `diaChi` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `hoTen` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `is_active` TINYINT(1) NULL DEFAULT NULL,
  `user_role` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`customer` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`customer` (
  `id` INT NOT NULL,
  `binhLuan` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `soLuotThich` INT NULL DEFAULT NULL,
  `userid` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_user_idx` (`userid` ASC) VISIBLE,
  CONSTRAINT `fk_user`
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
  `id` INT NOT NULL,
  `user_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `employee_ibfk_1`
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
  `id` INT NOT NULL,
  `moTaNgan` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `moTaDai` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `ngayDang` DATE NULL DEFAULT NULL,
  `trangThai` TINYINT(1) NULL DEFAULT NULL,
  `anh` VARCHAR(255) NULL DEFAULT NULL,
  `viewer` INT NULL DEFAULT NULL,
  `emloyee_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_employee_idx` (`emloyee_id` ASC) VISIBLE,
  CONSTRAINT `fk_employee`
    FOREIGN KEY (`emloyee_id`)
    REFERENCES `dulichyenngocdb`.`employee` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`binhluan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`binhluan` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`binhluan` (
  `id` INT NOT NULL,
  `ngayBinhLuan` DATE NULL DEFAULT NULL,
  `noiDung` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `customerId` INT NULL DEFAULT NULL,
  `tintuc_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_customer_id_idx` (`customerId` ASC) VISIBLE,
  INDEX `fk_tintuc_idx` (`tintuc_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_id`
    FOREIGN KEY (`customerId`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
  CONSTRAINT `fk_tintuc`
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
  `id` INT NOT NULL,
  `tenNguoiDi` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `sdt` VARCHAR(45) NULL DEFAULT NULL,
  `diaChi` VARCHAR(100) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`booking` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`booking` (
  `id` INT NOT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `employee_id` INT NULL DEFAULT NULL,
  `bookingDay` DATE NULL DEFAULT NULL,
  `totalMoney` DECIMAL(10,0) NULL DEFAULT NULL,
  `soNguoiDi` INT NULL DEFAULT NULL,
  `thongTinLienLac_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_customer_id_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_emloyee_id_idx` (`employee_id` ASC) VISIBLE,
  INDEX `fk_thongtinlienlac_id_idx` (`thongTinLienLac_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
 
    FOREIGN KEY (`employee_id`)
    REFERENCES `dulichyenngocdb`.`employee` (`id`),
  CONSTRAINT `fk_thongtinlienlac`
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
  `id` INT NOT NULL,
  `ten` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`diadanh`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`diadanh` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`diadanh` (
  `id` INT NOT NULL,
  `ten` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `tinhthanh_id` INT NULL DEFAULT NULL,
  `moTa` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tinhthanh_idx` (`tinhthanh_id` ASC) VISIBLE,
  CONSTRAINT `fk_tinhthanh`
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
  `id` INT NOT NULL,
  `content` VARCHAR(255) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`tour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`tour` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`tour` (
  `id` INT NOT NULL,
  `ten` VARCHAR(100) NULL DEFAULT NULL,
  `gia` DECIMAL(10,0) NULL DEFAULT NULL,
  `diemDen_id` INT NULL DEFAULT NULL,
  `diemDi_id` INT NULL DEFAULT NULL,
  `gioiHanNDi` INT NULL DEFAULT NULL,
  `thoiGian` DATE NULL DEFAULT NULL,
  `ngayKhoiHanh` DATE NULL DEFAULT NULL,
  `loaiTour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_loaitour_idx` (`loaiTour_id` ASC) VISIBLE,
  INDEX `fk_diadanh_diemden_idx` (`diemDen_id` ASC) VISIBLE,
  INDEX `fk_tinhthanh_diemdi_idx` (`diemDi_id` ASC) VISIBLE,
  CONSTRAINT `fk_diadanh_diemden`
    FOREIGN KEY (`diemDen_id`)
    REFERENCES `dulichyenngocdb`.`diadanh` (`id`),
  CONSTRAINT `fk_loaitour`
    FOREIGN KEY (`loaiTour_id`)
    REFERENCES `dulichyenngocdb`.`loaitour` (`id`),
  CONSTRAINT `fk_tinhthanh_diemdi`
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
  `id` INT NOT NULL,
  `ngayBD` DATE NULL DEFAULT NULL,
  `booking_id` INT NULL DEFAULT NULL,
  `tour_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_booking_idx` (`booking_id` ASC) VISIBLE,
  INDEX `fk_tour_idx` (`tour_id` ASC) VISIBLE,
  CONSTRAINT `fk_booking`
    FOREIGN KEY (`booking_id`)
    REFERENCES `dulichyenngocdb`.`booking` (`id`),
  CONSTRAINT `fk_tour`
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
  `id` INT NOT NULL,
  `doTuoi` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `dulichyenngocdb`.`thich`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dulichyenngocdb`.`thich` ;

CREATE TABLE IF NOT EXISTS `dulichyenngocdb`.`thich` (
  `id` INT NOT NULL,
  `trangThai` TINYINT(1) NULL DEFAULT NULL,
  `customerId` INT NULL DEFAULT NULL,
  `tintuc_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `customerId` (`customerId` ASC) VISIBLE,
  INDEX `tintuc_id` (`tintuc_id` ASC) VISIBLE,
  CONSTRAINT `thich_ibfk_1`
    FOREIGN KEY (`customerId`)
    REFERENCES `dulichyenngocdb`.`customer` (`id`),
  CONSTRAINT `thich_ibfk_2`
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
  `id` INT NOT NULL,
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
