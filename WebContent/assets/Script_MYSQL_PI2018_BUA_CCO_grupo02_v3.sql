-- drop database pi_bua_cco_2018;

CREATE SCHEMA IF NOT EXISTS `pi_bua_cco_2018` DEFAULT CHARACTER SET utf8 ;
USE `pi_bua_cco_2018`;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`data` (
  `idData` INT NOT NULL AUTO_INCREMENT,
  `dataInicio` DATE NOT NULL,
  `dataTermino` DATE NOT NULL,
  `dataEntrada` TIMESTAMP NOT NULL,
  `dataSaida` TIMESTAMP NOT NULL,
  PRIMARY KEY (`idData`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`usuario` (
  `idUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeUsuario` VARCHAR(45) NOT NULL,
  `cpf` BIGINT(11) NOT NULL,
  `rg` VARCHAR(14) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  `telefone` BIGINT(14) UNSIGNED ZEROFILL NOT NULL,
  `celular` BIGINT(14) UNSIGNED ZEROFILL NOT NULL,
  `cargo` VARCHAR(45) NOT NULL,
  `tipoUsuario` INT NOT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`cliente` (
  `idCliente` INT(11) NOT NULL AUTO_INCREMENT,
  `razaoSocial` VARCHAR(255) NOT NULL,
  `endereco` VARCHAR(150) NOT NULL,
  `cnpj` BIGINT(14) UNSIGNED ZEROFILL NOT NULL,
  `setor` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`projeto` (
  `idProjeto` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeProjeto` VARCHAR(150) NOT NULL,
  `descricaoProjeto` VARCHAR(500) NULL DEFAULT NULL,
  `valor` DOUBLE NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `Cliente_idCliente` INT(11) NOT NULL,
  `Data_idData` INT NOT NULL,
  PRIMARY KEY (`idProjeto`),
  INDEX `fk_Projeto_Cliente1_idx` (`Cliente_idCliente` ASC),
  INDEX `fk_projeto_Data1_idx` (`data_idData` ASC),
  CONSTRAINT `fk_Projeto_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `pi_bua_cco_2018`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projeto_Data1`
    FOREIGN KEY (`Data_idData`)
    REFERENCES `pi_bua_cco_2018`.`data` (`idData`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`demanda` (
  `idDemanda` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeDemanda` VARCHAR(100) NOT NULL,
  `descricaoDemanda` VARCHAR(300) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `tempoDemanda` VARCHAR(45) NULL DEFAULT NULL,
  `projeto_idProjeto` INT(11) NOT NULL,
  PRIMARY KEY (`idDemanda`),
  INDEX `fk_Demanda_Projeto1_idx` (`projeto_idProjeto` ASC),
  CONSTRAINT `fk_Demanda_Projeto1`
    FOREIGN KEY (`projeto_idProjeto`)
    REFERENCES `pi_bua_cco_2018`.`projeto` (`idProjeto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `pi_bua_cco_2018`.`Recusos` (
  `idRecusos` INT(11) NOT NULL AUTO_INCREMENT,
  `demanda_idDemanda` INT(11) NOT NULL,
  `usuario_idUsuario` INT(11) NOT NULL,
  `comentarios` VARCHAR(200) NULL,
  `arquivo` VARCHAR(45) NULL,
  PRIMARY KEY (`idRecusos`, `demanda_idDemanda`, `usuario_idUsuario`),
  INDEX `fk_Demanda_has_Usuario_Usuario1_idx` (`usuario_idUsuario` ASC),
  INDEX `fk_Demanda_has_Usuario_Demanda1_idx` (`demanda_idDemanda` ASC),
  CONSTRAINT `fk_Demanda_has_Analista_Analista1`
    FOREIGN KEY (`usuario_idUsuario`)
    REFERENCES `pi_bua_cco_2018`.`usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Demanda_has_Usuario_Demanda1`
    FOREIGN KEY (`demanda_idDemanda`)
    REFERENCES `pi_bua_cco_2018`.`demanda` (`idDemanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
