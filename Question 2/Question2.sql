CREATE TABLE `constantia insurance assessment`.`policy` 
(`policy_number` INT NOT NULL AUTO_INCREMENT , `policy_holder_first_name` VARCHAR(50) NOT NULL , `policy_holder_last_name` VARCHAR(50) NOT NULL , `policy_inception_date` DATE NOT NULL , PRIMARY KEY (`policy_number`)) ENGINE = InnoDB;



CREATE TABLE `constantia insurance assessment`.`claim` (`claim_number` INT NOT NULL AUTO_INCREMENT , `policy_number` INT NOT NULL , `date_of_loss` DATE NOT NULL , `claim_date_reported` DATE NOT NULL , PRIMARY KEY (`claim_number`)) ENGINE = InnoDB;

ALTER TABLE `claim` ADD FOREIGN KEY (`policy_number`) REFERENCES `policy`(`policy_number`);



CREATE TABLE `constantia insurance assessment`.`policy_item` (`policy_item_number` VARCHAR(50) NOT NULL , `policy_number` INT NOT NULL , `section` VARCHAR(50) NOT NULL , `sum_insured` DECIMAL(18,0) NOT NULL , PRIMARY KEY (`policy_item_number`)) ENGINE = InnoDB;

ALTER TABLE `policy_item` ADD  FOREIGN KEY (`policy_number`) REFERENCES `policy`(`policy_number`);