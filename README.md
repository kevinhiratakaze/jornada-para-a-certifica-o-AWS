# Regras de Negócio para o Site de Jornada de Certificação AWS

## 1. Login
### Login dos Usuários:
Validação de dados cadastro: Deve confirmar os dados colocados na tela de Cadastros


## 2. Cadastro
### Cadastro de novos Usuário:
- Validação de cadastro: Apenas e-mails válidos devem ser aceitos para cadastro, com confirmação por link enviado por e-mail.
- Senhas: Devem ter um mínimo de 8 caracteres, incluindo letras e números, para garantir maior segurança.
- Acesso restrito: Páginas "A Jornada" e "Simulado com Rank" são acessíveis apenas para usuários logados.
- Acesso livre: Página "Home"

## 3. Home
### Principal inicial:
Conteúdo básico para visitantes: Para usuários deslogados, a Home exibe informações sobre o que o site oferece, como uma visão geral da Jornada para Certificação AWS, os benefícios do simulado e do rank, e instruções sobre como se cadastrar e começar a jornada.
Chamada para ação: Destacar botões de Login e Cadastro em local de destaque, incentivando o visitante a criar uma conta para acesso completo.
Exibição limitada de funcionalidades: A Home pode exibir uma prévia de conteúdos populares, como uma lista de tópicos abordados na Jornada e uma visualização limitada do ranking, com apenas os cinco primeiros colocados, para dar uma ideia do sistema.
Progresso visível somente para logados: A barra de progresso e os atalhos de conteúdo específico só são exibidos para usuários logados.
Simulado com restrição: Exibir um lembrete de que o Simulado completo e o sistema de Ranking estão disponíveis apenas para usuários registrados e logados.


## 4. A Jornada
### Etapa dos projeto:
Progresso controlado: O usuário deve completar uma etapa antes de avançar para a próxima, para garantir uma progressão estruturada no conteúdo.
Materiais de apoio: Usuários podem visualizar e baixar materiais adicionais (PDFs, slides, etc.) apenas depois de concluir uma etapa correspondente.


## 5. Simulado com Rank
### Avaliação e Rank:
Tentativas limitadas: Cada usuário tem um número máximo de tentativas diárias para o simulado, evitando uso excessivo ou manipulação dos rankings.
Pontuação: A pontuação de cada simulado é calculada com base em tempo e precisão, sendo mais alta para respostas rápidas e corretas.
Atualização do Rank: O ranking é atualizado em tempo real, mas o usuário deve ter concluído pelo menos uma jornada de aprendizado para aparecer no ranking.


