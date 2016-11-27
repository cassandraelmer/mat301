-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema unemath_Elmer
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema unemath_Elmer
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `unemath_Elmer` DEFAULT CHARACTER SET utf8 ;
USE `unemath_Elmer` ;

-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Courses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Courses` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Courses` (
  `id` MEDIUMINT(3) NOT NULL COMMENT 'Example: 190, 225',
  `name` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `description` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `credits` VARCHAR(2) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Non-specific name, description, credits for classes';

CREATE INDEX `ix_course_id` ON `unemath_Elmer`.`Courses` (`id` ASC);


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Semesters`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Semesters` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Semesters` (
  `id` MEDIUMINT(6) NOT NULL COMMENT 'listed in degree evaluations\nExamples:\nFall 2014=201502\nSpring 2015=201504',
  `season` VARCHAR(6) CHARACTER SET 'utf8' NOT NULL,
  `year` MEDIUMINT(4) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE INDEX `ix_semester_id` ON `unemath_Elmer`.`Semesters` (`id` ASC);


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Taken`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Taken` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Taken` (
  `studentPRN` MEDIUMINT(9) NOT NULL,
  `CRN` MEDIUMINT(5) NOT NULL,
  PRIMARY KEY (`studentPRN`, `CRN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE INDEX `studentPRN` ON `unemath_Elmer`.`Taken` (`studentPRN` ASC);

CREATE INDEX `CRN` ON `unemath_Elmer`.`Taken` (`CRN` ASC);

CREATE INDEX `ix_CRN` ON `unemath_Elmer`.`Taken` (`CRN` ASC);


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Requirements`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Requirements` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Requirements` (
  `type` MEDIUMINT(1) NOT NULL COMMENT 'Major(1) or Minor(2)',
  `course_id` MEDIUMINT(3) NOT NULL COMMENT 'Example: 190',
  PRIMARY KEY (`type`, `course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE INDEX `course_id_idx` ON `unemath_Elmer`.`Requirements` (`course_id` ASC);

CREATE INDEX `ix_course_id` ON `unemath_Elmer`.`Requirements` (`course_id` ASC);


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Faculty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Faculty` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Faculty` (
  `PRN` MEDIUMINT(9) NOT NULL,
  `fname` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `lname` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`PRN`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Classes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Classes` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Classes` (
  `CRN` MEDIUMINT(5) NOT NULL,
  `course_id` MEDIUMINT(3) NOT NULL,
  `section` CHAR(1) CHARACTER SET 'utf8' NOT NULL,
  `semester_id` MEDIUMINT(6) NOT NULL COMMENT 'Semester Offered\nExample:\nFall 2014 = 201502\nSpring 2015 = 201504',
  `day` VARCHAR(5) CHARACTER SET 'utf8' NOT NULL COMMENT 'Days Met\nExample: MTWRF, TR',
  `start_time` TIME NOT NULL,
  `end_time` TIME NOT NULL,
  `instructorPRN` MEDIUMINT(9) NOT NULL,
  `location` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`CRN`),
  CONSTRAINT `course_id`
    FOREIGN KEY (`course_id`)
    REFERENCES `unemath_Elmer`.`Courses` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `semester_id`
    FOREIGN KEY (`semester_id`)
    REFERENCES `unemath_Elmer`.`Semesters` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `taken_CRN`
    FOREIGN KEY (`CRN`)
    REFERENCES `unemath_Elmer`.`Taken` (`CRN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `required_course_id`
    FOREIGN KEY (`course_id`)
    REFERENCES `unemath_Elmer`.`Requirements` (`course_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `instructor_PRN`
    FOREIGN KEY (`instructorPRN`)
    REFERENCES `unemath_Elmer`.`Faculty` (`PRN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'Specific days, times, semesters, years for courses';

CREATE INDEX `idx_semester_id` ON `unemath_Elmer`.`Classes` (`semester_id` ASC);

CREATE INDEX `idx_course_id` ON `unemath_Elmer`.`Classes` (`course_id` ASC);

CREATE INDEX `idx_instructorPRN` ON `unemath_Elmer`.`Classes` (`instructorPRN` ASC);


-- -----------------------------------------------------
-- Table `unemath_Elmer`.`Students`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `unemath_Elmer`.`Students` ;

CREATE TABLE IF NOT EXISTS `unemath_Elmer`.`Students` (
  `PRN` MEDIUMINT(9) NOT NULL,
  `fname` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT 'First Name',
  `lname` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT 'Last Name',
  `email` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL,
  `advisorPRN` MEDIUMINT(9) NOT NULL,
  `type` MEDIUMINT(1) NOT NULL COMMENT 'Major(1) or Minor(2)',
  `major1` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT 'optional for use if not math',
  `major2` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT 'optional for use if not math',
  `minor1` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT 'optional for use if not math',
  `minor2` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT 'optional for use if not math',
  `catyear` MEDIUMINT(4) NOT NULL COMMENT 'Catalog Year',
  `gradyear` MEDIUMINT(4) NOT NULL COMMENT 'Graduation Year',
  PRIMARY KEY (`PRN`),
  CONSTRAINT `student_PRN`
    FOREIGN KEY (`PRN`)
    REFERENCES `unemath_Elmer`.`Taken` (`studentPRN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `advisor_PRN`
    FOREIGN KEY (`advisorPRN`)
    REFERENCES `unemath_Elmer`.`Faculty` (`PRN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `student_type`
    FOREIGN KEY (`type`)
    REFERENCES `unemath_Elmer`.`Requirements` (`type`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;

CREATE INDEX `advisorPRN` ON `unemath_Elmer`.`Students` (`advisorPRN` ASC);

CREATE INDEX `type` ON `unemath_Elmer`.`Students` (`type` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
