-- Inserts

-- Usuarios
insert into usuaria (nome, email, senha, data_cadastro) values
('Kevin Kim', 'kevinkim@email.com', 'Senha@123', NOW()),
('Ingrid', 'ingrid@email.com', 'Senha@123', NOW()),
('João Pedro', 'joaopedro@email.com', 'Senha@123', NOW()),
('Everaldo', 'everaldo@email.com', 'Senha@123', NOW()),
('Mariza', 'mariza@email.com', 'Senha@123', NOW()),
('Kim Kevin', 'kimkevin@email.com', 'Senha@123', NOW()),
('Ingrid Segunda', 'ingridsegunda@email.com', 'Senha@123', NOW()),
('Pedro João', 'pedrojoao@email.com', 'Senha@123', NOW()),
('Everaldo Segundo', 'everaldosegundo@email.com', 'Senha@123', NOW()),
('Mariza Segunda', 'marizasegunda@email.com', 'Senha@123', NOW());


-- questoes
insert into questoes (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, resposta) values
('O que é a AWS?', 'Um serviço de armazenamento', 'Uma plataforma de computação em nuvem', 'Um sistema operacional', 'Nenhuma das anteriores', 'B'),
('Qual serviço é usado para armazenamento de objetos na AWS?', 'Amazon EC2', 'Amazon S3', 'Amazon RDS', 'Amazon Lambda', 'B'),
('O que é o Amazon EC2?', 'Um serviço de banco de dados', 'Um serviço de máquinas virtuais', 'Um serviço de monitoramento', 'Um serviço de mensagens', 'B'),
('Qual serviço é ideal para banco de dados relacional?', 'Amazon DynamoDB', 'Amazon RDS', 'Amazon Redshift', 'AWS Lambda', 'B'),
('Qual recurso do S3 permite versionamento?', 'Bucket Policies', 'Versionamento', 'Logging', 'Replicação', 'B'),
('O que é necessário para um bucket S3 ser público?', 'Nome único', 'Política de permissões', 'IAM Role', 'Replicação', 'B'),
('Para que serve o Amazon CloudFront?', 'Backups', 'CDN de baixa latência', 'Gerenciar VMs', 'Monitoramento', 'B'),
('Qual serviço AWS gerencia contêineres?', 'AWS ECS', 'Amazon S3', 'AWS CodePipeline', 'Amazon CloudWatch', 'A'),
('Qual tipo de armazenamento do EBS tem alta taxa de transferência?', 'SSD', 'HDD Cold', 'HDD Throughput Optimized', 'Provisionado IOPS', 'C'),
('O que é o AWS IAM?', 'Gerenciamento de identidades e permissões', 'Backup automático', 'Análise de dados', 'Gerenciamento de contêineres', 'A');


-- simulado
insert into simulado (fk_id_usuario, pontuacao, data_realizacao) values
(1, 80, NOW()),
(2, 90, NOW()),
(3, 70, NOW()),
(4, 85, NOW()),
(5, 60, NOW()),
(6, 95, NOW()),
(7, 75, NOW()),
(8, 88, NOW()),
(9, 92, NOW()),
(10, 65, NOW());


--ranking
insert into ranking (fk_id_usuario, pontuacao, posicao, data_realizacao) values
(6, 95, 1, NOW()),
(9, 92, 2, NOW()),
(2, 90, 3, NOW()),
(1, 80, 4, NOW()),
(4, 85, 5, NOW()),
(8, 88, 6, NOW()),
(7, 75, 7, NOW()),
(3, 70, 8, NOW()),
(10, 65, 9, NOW()),
(5, 60, 10, NOW());


-- jornada
insert into jornada (titulo, descricao, observacoes) values
('Introdução à AWS', 'Fundamentos básicos sobre a AWS', null),
('Computação em Nuvem', 'Conceitos fundamentais de cloud computing', null),
('Armazenamento AWS', 'Serviços como S3 e EBS', null),
('Banco de Dados AWS', 'Amazon RDS, DynamoDB e outros', null),
('Rede e Segurança', 'Conceitos sobre VPC e IAM', null),
('Computação Serverless', 'AWS Lambda e suas aplicações', null),
('Monitoramento AWS', 'Uso do CloudWatch e outras ferramentas', null),
('Gerenciamento de Custos', 'Como otimizar custos na AWS', null),
('Desempenho e Escalabilidade', 'Melhores práticas para escalar aplicações', null),
('Preparação para Certificação', 'Dicas para se preparar para a certificação AWS', null);


-- progresso jornada
insert into progresso_jornada (fk_id_usuario, fk_id_jornada, progresso, data_ultima_atualizacao) values
(1, 1, 100, NOW()),
(2, 2, 80, NOW()),
(3, 3, 60, NOW()),
(4, 4, 40, NOW()),
(5, 5, 20, NOW()),
(6, 6, 90, NOW()),
(7, 7, 70, NOW()),
(8, 8, 50, NOW()),
(9, 9, 30, NOW()),
(10, 10, 10, NOW());


