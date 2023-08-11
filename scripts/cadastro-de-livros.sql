CREATE DATABASE IF NOT EXISTS biblioteca;
-- criando banco de dados

USE biblioteca;
-- declarando o banco de dads a ser utilizado

-- criando tabela endereços
CREATE TABLE `enderecos` (
  `id` INT UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `cep` INT,
  `rua` VARCHAR(50),
  `numero` INT,
  `complemento` VARCHAR(40),
  `bairro` VARCHAR(30),
  `cidade` VARCHAR(40),
  `estado` VARCHAR(2),
  `pais` VARCHAR(30)
);

-- criando tabela pessoas
CREATE TABLE `pessoas` (
  `id` INT UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(80),
  `cpf` VARCHAR(11),
  `nacionalidade` VARCHAR(30),
  `email` VARCHAR(100),
  `telefone` BIGINT,
  `genero` VARCHAR(30),
  `data_nascimento` DATE,
  `id_enderecos_fk` INT,
  FOREIGN KEY (`id_enderecos_fk`) REFERENCES `enderecos` (`id`)
);

-- criando tabela autores + status com enum
CREATE TABLE `autores` (
  `id` int UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `qtd_livro` INT,
  `bibliografia` VARCHAR(255),
  `data_falecimento` DATE,
  `status_atividade` ENUM ('ativo', 'falecido', 'aposentado'),
  `id_pessoas_fk` INT,
  FOREIGN KEY (`id_pessoas_fk`) REFERENCES `pessoas` (`id`)
);

-- ciando tabela funcionários
CREATE TABLE `funcionarios` (
  `id` INT UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `cargo` VARCHAR(30),
  `setor` VARCHAR(30),
  `data_admissao` DATE,
  `data_desligamento` DATE,
  `senha` VARCHAR(20),
  `id_pessoas_fk` INT,
  FOREIGN KEY (`id_pessoas_fk`) REFERENCES `pessoas` (`id`)
);

-- criando tabela editoras
CREATE TABLE `editoras` (
  `id` INT UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `nome` VARCHAR(80),
  `cnpj` BIGINT,
  `telefone` BIGINT,
  `id_enderecos_fk` INT,
  FOREIGN KEY (`id_enderecos_fk`) REFERENCES `enderecos` (`id`)
);

-- criando tabela livros + generos com enum
CREATE TABLE `livros` (
  `id` INT UNIQUE PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `titulo` VARCHAR(80),
  `ano` INT,
  `genero` ENUM (
	'autobiografia',
  'epopeia',
  'poesia',
  'romance',
  'autoajuda',
	'conto',
  'cronica',
	'fábula',
  'dramatico',
  'suspense',
  'investigativo',
  'lirico',
  'epico',
  'acadêmico',
  'científico'),
  `qtd_pag` INT,
  `idioma` VARCHAR(30),
  `isbn` BIGINT,
  `edicao` INT,
  `id_autores_fk` INT,
  `id_editoras_fk` INT,
  `id_funcionarios_fk` INT,
  FOREIGN KEY (`id_autores_fk`) REFERENCES `autores` (`id`),
  FOREIGN KEY (`id_editoras_fk`) REFERENCES `editoras` (`id`),
  FOREIGN KEY (`id_funcionarios_fk`) REFERENCES `funcionarios` (`id`)
);
