-- MySQL Script generated by MySQL Workbench
-- Fri Mar 22 15:09:08 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`DONVI`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DONVI` (
  `id` INT NOT NULL,
  `ten_don_vi` VARCHAR(45) NULL,
  `ten_nguoi_dung_dau` VARCHAR(45) NULL,
  `dia_chi_don_vi` VARCHAR(45) NULL,
  `dien_thoai` VARCHAR(45) NULL,
  `fax` VARCHAR(45) NULL,
  `website` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CBGV`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CBGV` (
  `id` INT NOT NULL,
  `ho & ten` VARCHAR(45) NULL,
  `matkhau` VARCHAR(45) NULL,
  `ngay_sinh` VARCHAR(45) NULL,
  `gioi_tinh` VARCHAR(45) NULL,
  `hoc_ham` VARCHAR(45) NULL,
  `hoc_vi` VARCHAR(45) NULL,
  `nam_duoc_phong` DATETIME NULL,
  `nam_dat_hoc_vi` DATETIME NULL,
  `chuc_danh_nc` VARCHAR(45) NULL,
  `dien_thoai_NR` VARCHAR(45) NULL,
  `CQ` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `linh_vuc_chuyen_mon_sau` VARCHAR(45) NULL,
  `DONVI_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CBGV_DONVI1_idx` (`DONVI_id` ASC) VISIBLE,
  CONSTRAINT `fk_CBGV_DONVI1`
    FOREIGN KEY (`DONVI_id`)
    REFERENCES `mydb`.`DONVI` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LINHVUC`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LINHVUC` (
  `id` INT NOT NULL,
  `ten_goi` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`NGANH`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`NGANH` (
  `id` INT NOT NULL,
  `ten_goi` VARCHAR(45) NULL,
  `LINHVUC_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_NGANH_LINHVUC1_idx` (`LINHVUC_id` ASC) VISIBLE,
  CONSTRAINT `fk_NGANH_LINHVUC1`
    FOREIGN KEY (`LINHVUC_id`)
    REFERENCES `mydb`.`LINHVUC` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CHUYENNGANH`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CHUYENNGANH` (
  `id` INT NOT NULL,
  `ten_goi` VARCHAR(45) NULL,
  `NGANH_id` INT NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CHUYENNGANH_NGANH1_idx` (`NGANH_id` ASC) VISIBLE,
  INDEX `fk_CHUYENNGANH_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_CHUYENNGANH_NGANH1`
    FOREIGN KEY (`NGANH_id`)
    REFERENCES `mydb`.`NGANH` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CHUYENNGANH_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`KINHNGHIEMKHCN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`KINHNGHIEMKHCN` (
  `id` INT NOT NULL,
  `hinh_thuc_hoi_dong` VARCHAR(45) NULL,
  `so_lan` VARCHAR(45) NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_KINHNGHIEMKHCN_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_KINHNGHIEMKHCN_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`NGHIENCUUSINH`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`NGHIENCUUSINH` (
  `id` INT NOT NULL,
  `ho & ten` VARCHAR(45) NULL,
  `hinh_thuc_huong_dan` VARCHAR(45) NULL,
  `don_vi_cong_tac` VARCHAR(45) NULL,
  `nam_bao_ve_thanh_cong` DATETIME NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_NGHIENCUUSINH_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_NGHIENCUUSINH_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TRINHDONN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TRINHDONN` (
  `id` INT NOT NULL,
  `ten_ngoai_ngu` VARCHAR(45) NULL,
  `nghe` VARCHAR(45) NULL,
  `noi` VARCHAR(45) NULL,
  `doc` VARCHAR(45) NULL,
  `viet` VARCHAR(45) NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_TRINHDONN_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_TRINHDONN_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`QUATRINHCT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`QUATRINHCT` (
  `id` INT NOT NULL,
  `thoi_gian` VARCHAR(45) NULL,
  `vi_tri_cong_tac` VARCHAR(45) NULL,
  `linh_vuc` VARCHAR(45) NULL,
  `co_quan_cong_tac` VARCHAR(45) NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_QUATRINHCT_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_QUATRINHCT_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`QUATRINHDT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`QUATRINHDT` (
  `id` INT NOT NULL,
  `bac_dao_tao` VARCHAR(45) NULL,
  `noi_dao_tao` VARCHAR(45) NULL,
  `chuyen_nghanh` VARCHAR(45) NULL,
  `nam_tot_nghiep` DATETIME NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_QUATRINHDT_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_QUATRINHDT_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DETAIKHCNGANDAY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DETAIKHCNGANDAY` (
  `id` INT NOT NULL,
  `ten_de_ta_du_an` VARCHAR(45) NULL,
  `chutri_thamgia` VARCHAR(45) NULL,
  `thoi_gian` VARCHAR(45) NULL,
  `thuoc_chuong_trinh` VARCHAR(45) NULL,
  `tinh_trang` VARCHAR(45) NULL,
  `CBGV_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_DETAIKHCNGANDAY_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  CONSTRAINT `fk_DETAIKHCNGANDAY_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DANHMUCCT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DANHMUCCT` (
  `id` INT NOT NULL,
  `tap_chi_QT` VARCHAR(45) NULL,
  `tap_chi_QG` VARCHAR(45) NULL,
  `hoi_nghi_QT` VARCHAR(45) NULL,
  `hoi_nghi_QG` VARCHAR(45) NULL,
  `sach_chuyen_khao` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CBGV_CT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CBGV_CT` (
  `ten_cong_trinh` VARCHAR(45) NULL,
  `tac_gia` VARCHAR(45) NULL,
  `noi_cong_bo` VARCHAR(45) NULL,
  `CBGV_CTcol` VARCHAR(45) NULL,
  `CBGV_id` INT NULL,
  `DANHMUCCT_id` INT NULL,
  INDEX `fk_CBGV_CT_CBGV1_idx` (`CBGV_id` ASC) VISIBLE,
  INDEX `fk_CBGV_CT_DANHMUCCT1_idx` (`DANHMUCCT_id` ASC) VISIBLE,
  CONSTRAINT `fk_CBGV_CT_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CBGV_CT_DANHMUCCT1`
    FOREIGN KEY (`DANHMUCCT_id`)
    REFERENCES `mydb`.`DANHMUCCT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`DANHMUCVB`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`DANHMUCVB` (
  `id` INT NOT NULL,
  `doc_quyen_sang_che` VARCHAR(45) NULL,
  `giai_phap_huu_ich` VARCHAR(45) NULL,
  `van_bang_bao_ho_GCT` VARCHAR(45) NULL,
  `TKBTMTH` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CBGV_VB`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CBGV_VB` (
  `ten_noidung` VARCHAR(45) NULL,
  `nam_cap` DATETIME NULL,
  `CBGV_id` INT NULL,
  `DANHMUCVB_id` INT NULL,
  INDEX `fk_CBGV_VB_DANHMUCVB1_idx` (`DANHMUCVB_id` ASC) VISIBLE,
  CONSTRAINT `fk_CBGV_VB_CBGV1`
    FOREIGN KEY (`CBGV_id`)
    REFERENCES `mydb`.`CBGV` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CBGV_VB_DANHMUCVB1`
    FOREIGN KEY (`DANHMUCVB_id`)
    REFERENCES `mydb`.`DANHMUCVB` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`GIAITHUONG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`GIAITHUONG` (
  `id` INT NOT NULL,
  `hinhthuc_noidung` VARCHAR(45) NULL,
  `nam_tang_thuong` VARCHAR(45) NULL,
  `DANHMUCCT_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_GIAITHUONG_DANHMUCCT1_idx` (`DANHMUCCT_id` ASC) VISIBLE,
  CONSTRAINT `fk_GIAITHUONG_DANHMUCCT1`
    FOREIGN KEY (`DANHMUCCT_id`)
    REFERENCES `mydb`.`DANHMUCCT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CTADTHUCTIEN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CTADTHUCTIEN` (
  `id` INT NOT NULL,
  `ten_cong_trinh` VARCHAR(100) NULL,
  `hinh_thuc_quy_mo` VARCHAR(45) NULL,
  `thoi_gian` DATETIME NULL,
  `DANHMUCCT_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_CTADTHUCTIEN_DANHMUCCT1_idx` (`DANHMUCCT_id` ASC) VISIBLE,
  CONSTRAINT `fk_CTADTHUCTIEN_DANHMUCCT1`
    FOREIGN KEY (`DANHMUCCT_id`)
    REFERENCES `mydb`.`DANHMUCCT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
