-- dados de endereços para pessoas e editoras
INSERT INTO enderecos (cep, rua, numero, complemento, bairro, cidade, estado, pais)
	VALUES
		('83075218', 'rua manoel pires cordeiro', '501','n/a','borda do campo','são josé dos pinhais','pr','brasil'),
		('82510150', 'Rua Itupava', '111', 'N/A', 'Alto da XV', 'Curitiba', 'PR', 'Brasil'),
		('80030030', 'Rua Emiliano Perneta', '222', 'N/A', 'Centro', 'Curitiba', 'PR', 'Brasil'),
		('24001', 'Trafalgar Square', '76', 'Flat 6', 'Westminster', 'London', 'UK', 'United Kingdom'),
		('26002', 'Times Square', '487', 'N/A', 'Midtown Manhattan', 'New York City', 'NY', 'United States'),
		('82120130', 'Rua André de Barros', '555', 'N/A', 'Centro', 'Curitiba', 'PR', 'Brasil'),
		('80710290', 'Avenida Silva Jardim', '666', 'N/A', 'Alto da Glória', 'Curitiba', 'PR', 'Brasil'),
		('16003', 'Hollywood Boulevard', '7018', 'N/A', 'Hollywood', 'Los Angeles', 'CA', 'United States'),
		('14002', 'Av. de Mayo', '100', 'Apartment 502', 'Montserrat', 'Buenos Aires', 'BA', 'Argentina'),
		('80560180', 'Rua Carlos de Carvalho', '9999', 'N/A', 'Centro', 'Curitiba', 'PR', 'Brasil'),
		('82540010', 'Alameda Augusto Stelfeld', '111', 'N/A', 'Bigorrilho', 'Curitiba', 'PR', 'Brasil'),
		('80720210', 'Avenida Sete de Setembro', '222', 'N/A', 'Centro', 'Curitiba', 'PR', 'Brasil'),
		('82620030', 'Rua Brigadeiro Franco', '333', 'N/A', 'Mercês', 'Curitiba', 'PR', 'Brasil'),
		('82620100', 'Avenida Iguaçu', '444', 'N/A', 'Água Verde', 'Curitiba', 'PR', 'Brasil'),
		('82200280', 'Rua Carlos de Carvalho', '555', 'N/A', 'Batel', 'Curitiba', 'PR', 'Brasil');
        
-- dados de pessoas, para autores e funcionários
INSERT INTO pessoas (nome, cpf, nacionalidade, email, telefone, genero, data_nascimento, id_enderecos_fk)
	VALUES
		('Dayane de Vargas', '12158790955', 'brasileiro', 'dayane.vargas@gmail.com', '41998688770', 'feminino', '2001-08-26', '1'),
      		('José da Silva', '39481562198', 'brasileiro', 'jose.silva@gmail.com', '41987654321', 'masculino', '1960-03-15', '2'),
		('Maria Souza', '75832145678', 'brasileiro', 'maria.souza@gmail.com', '41976543210', 'feminino', '1985-09-20', '3'),
		('John Smith', '12345678901', 'estrangeiro', 'john.smith@gmail.com', '14155528955', 'outro', '1975-05-10', '4'),
		('Emma Johnson', '09876543210', 'estrangeiro', 'emma.johnson@gmail.com', '14177542097', 'feminino', '1988-11-28', '5'),
		('Carlos Torres', '56789012345', 'brasileiro', 'carlos.torres@gmail.com', '41999769919', 'masculino', '1993-12-03', '6'),
		('Elena Costa', '87359124685', 'brasileiro', 'elena.costa@gmail.com', '41988209888', 'outro', '1982-06-22', '7'),
		('James Wilson', '14725836901', 'estrangeiro', 'james.wilson@gmail.com', '14133333125', 'masculino', '1978-04-17', '8'),
		('Sophia Brown', '65432109876', 'estrangeiro', 'sophia.brown@gmail.com', '1416542966', 'feminino', '1991-07-11', '9'),
		('Luis Oliveira', '98765432109', 'brasileiro', 'luis.oliveira@gmail.com', '4192292222', 'outro', '1986-10-05', '10');
        
-- dados de autores
INSERT INTO autores (qtd_livro, bibliografia, data_falecimento, status_atividade, id_pessoas_fk)
	VALUES 
		('2', 'Dayane morou em Londres, onde estudou escrita criativa e escreveu seu primeiro romance, Fazendo meu filme.', null,'ativo','1'),
		('4', 'José da Silva é um jovem autor brasileiro, cujas obras refletem questões sociais e emocionam seus leitores.', '2009-12-02', 'falecido', '2'),
		('2', 'Maria Souza é uma escritora brasileira que combina drama e suspense em suas obras, conquistando o público com tramas envolventes.', null, 'aposentado', '3'),
		('3', 'John Smith é um autor estrangeiro que possui uma escrita única e envolvente, tornando suas histórias inesquecíveis.', null, 'ativo', '4'),
		('1', 'Emma Johnson é uma escritora estrangeira aclamada, cujos romances românticos emocionam milhares de leitores.', null, 'ativo', '5');
        
-- dados de funcionários
INSERT INTO funcionarios (cargo, setor, data_admissao, data_desligamento, senha, id_pessoas_fk)
	VALUES 
		('gerente','administrativo','2020-04-26', null,'65415898','6'),
		('atendimento ao público', 'bibliotecário', '2020-05-02', null, '67918765', '7'),
	        ('auxiliar RH', 'RH', '2020-11-20', null, '51092837', '8'),
	        ('catalogador', 'acervo', '2022-01-05', null, '25876532', '9'),
	        ('tecnico informática', 'informática', '2021-03-10', '2023-07-28', '67898912', '10');
        
-- dados dados de editoras
INSERT INTO editoras (nome, cnpj, telefone, id_enderecos_fk)
	VALUES 
		('rocco','67428110000120','41988763275','11'),
	        ('intrínseca','03235566000190','41954298705','12'),
	        ('arqueiro','05138689000139','41976099076','13'),
	        ('sextante','13878352000196','41951444318','14'),
	        ('record','15358677000173','41987625274','15');
        
-- dados de livros conforme cada autor, editora e funcionário que cadastrou o livro.
INSERT INTO livros (titulo, ano, genero, qtd_pag, idioma, isbn, edicao, id_autores_fk, id_editoras_fk, id_funcionarios_fk)
	VALUES 
		('Fazendo meu filme', 2015, 'romance', 350, 'português', '9788567296087', 1, 1, 1, 4),
		('Ecos do Passado', 2020, 'poesia', 400, 'português', '9788580415684', 3, 1, 2, 4),
		('O Canto das Estrelas', 1995, 'conto', 280, 'português', '9788532521666', 2, 2, 5, 4),
		('A Voz do Silêncio', 1985, 'epopeia', 320, 'português', '9788532527422', 1, 2, 4, 4),
		('Pássaros na Neve', 1992, 'investigativo', 410, 'português', '9788532525152', 4, 2, 3, 4),
		('A Herança Perdida', 1998, 'acadêmico', 380, 'português', '9788580410320', 5, 2, 2, 4),
		('Caminho das Estações', 2000, 'dramatico', 300, 'português', '9788532527798', 2, 3, 1, 4),
		('Despertar das Sombras', 2010, 'suspense', 280, 'português', '9788581639842', 1, 3, 1, 4),
		('Animal Farm', 1999, 'fábula', 340, 'inglês', '9788532521123', 5, 4, 2, 4),
		('The Power of Now', 2003, 'autoajuda', 360, 'inglês', '9788581639071', 3, 4, 3, 4),
		('Slouching Towards Bethlehem', 2004, 'cronica', 290, 'inglês', '9788580413666', 4, 4, 3, 4),
		('Pride and Prejudice', 2008, 'romance', 400, 'inglês', '9788581638609', 1, 5, 5, 4);
