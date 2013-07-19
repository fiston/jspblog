SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `s3f4` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `s3f4` ;

-- -----------------------------------------------------
-- Table `s3f4`.`tag`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `s3f4`.`tag` (
  `tagid` INT NOT NULL ,
  `tagname` VARCHAR(200) NULL ,
  PRIMARY KEY (`tagid`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `s3f4`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `s3f4`.`user` (
  `userid` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(100) NULL ,
  `usermail` VARCHAR(100) NULL ,
  `password` VARCHAR(100) NULL ,
  `userrepassword` VARCHAR(100) NULL ,
  `userfacebook` VARCHAR(200) NULL ,
  `usertwitter` VARCHAR(200) NULL ,
  `usertelnumber` VARCHAR(100) NULL ,
  PRIMARY KEY (`userid`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `s3f4`.`project`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `s3f4`.`project` (
  `projectid` INT NOT NULL AUTO_INCREMENT ,
  `projecttitle` VARCHAR(300) NULL ,
  `projectcontent` TEXT NULL ,
  `projectstartdate` VARCHAR(45) NULL ,
  `projectfinishdate` VARCHAR(45) NULL ,
  `userid` INT NULL ,
  `projectdate` VARCHAR(45) NULL ,
  `tagid` INT NULL ,
  PRIMARY KEY (`projectid`) ,
  INDEX `project_tagid` (`tagid` ASC) ,
  INDEX `project_userid` (`userid` ASC) ,
  CONSTRAINT `project_tagid`
    FOREIGN KEY (`tagid` )
    REFERENCES `s3f4`.`tagmap` (`tagid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `project_userid`
    FOREIGN KEY (`userid` )
    REFERENCES `s3f4`.`user` (`userid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `s3f4`.`tagmap`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `s3f4`.`tagmap` (
  `tagid` INT NOT NULL ,
  `threadid` INT NULL ,
  `projectid` INT NULL ,
  PRIMARY KEY (`tagid`) ,
  INDEX `tagmap_tagmapid` (`tagid` ASC) ,
  INDEX `tagmap_threadid` (`threadid` ASC) ,
  INDEX `tagmap_projectid` (`projectid` ASC) ,
  CONSTRAINT `tagmap_tagmapid`
    FOREIGN KEY (`tagid` )
    REFERENCES `s3f4`.`tag` (`tagid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tagmap_threadid`
    FOREIGN KEY (`threadid` )
    REFERENCES `s3f4`.`thread` (`threadid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tagmap_projectid`
    FOREIGN KEY (`projectid` )
    REFERENCES `s3f4`.`project` (`projectid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `s3f4`.`thread`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `s3f4`.`thread` (
  `threadid` INT NOT NULL AUTO_INCREMENT ,
  `threadtitle` VARCHAR(300) NULL ,
  `threadcontent` TEXT NULL ,
  `threaddate` VARCHAR(45) NULL ,
  `userid` INT NULL ,
  `tagid` INT NULL ,
  PRIMARY KEY (`threadid`) ,
  INDEX `thread_tagid` (`tagid` ASC) ,
  INDEX `thread_userid` (`userid` ASC) ,
  CONSTRAINT `thread_tagid`
    FOREIGN KEY (`tagid` )
    REFERENCES `s3f4`.`tagmap` (`tagid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `thread_userid`
    FOREIGN KEY (`userid` )
    REFERENCES `s3f4`.`user` (`userid` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
