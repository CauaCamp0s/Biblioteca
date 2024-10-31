# Biblioteca Flask

Uma aplicação web desenvolvida em Flask para gerenciamento de uma biblioteca, permitindo cadastro de livros, usuários e empréstimos.

## Funcionalidades

- Cadastro de livros com informações como título, autor, gênero e ano de publicação.
- Cadastro de usuários (membros da biblioteca).
- Empréstimo e devolução de livros.
- Consulta de livros disponíveis.
- Visualização de histórico de empréstimos.

## Tecnologias Utilizadas

- **Backend**: Flask
- **Banco de Dados**: MySQL
- **Frontend**: HTML, CSS, Bootstrap
- **Autenticação**: Token de acesso pessoal do GitHub (para acesso ao repositório)

## Requisitos

- Python 3.x
- Flask
- MySQL
- Outros pacotes Python listados em `requirements.txt`

## Instalação

**1. Clone o repositório:
**   git clone https://github.com/CauaCamp0s/bibliotecaFlask.git

**2.   Navegue até o diretório do projeto:
**  cd bibliotecaFlask

**3. Crie um ambiente virtual e ative-o:
**  python -m venv venv
  source venv/bin/activate  # Para Linux ou macOS
  venv\Scripts\activate     # Para Windows

**4. Instale as dependências:
**  pip install -r requirements.txt

**5. Configure o banco de dados MySQL:
**  Crie um banco de dados chamado biblioteca.
  Execute as migrações necessárias para criar as tabelas.

**6. Execute a aplicação:
**  flask run

7. Acesse a aplicação em seu navegador em http://127.0.0.1:5000.


## Contribuições
Contribuições são bem-vindas! Se você quiser contribuir, siga estas etapas:

Faça um fork do projeto.
Crie uma nova branch (git checkout -b feature/nome-da-sua-feature).
Faça suas alterações e commit (git commit -m 'Adicionei uma nova feature').
Envie para o repositório remoto (git push origin feature/nome-da-sua-feature).
Abra um Pull Request.
Licença
Este projeto está licenciado sob a MIT License. Consulte o arquivo LICENSE para mais informações.

Autor
Cauã Campos



### Personalizações

1. **Funcionalidades**: Ajuste as funcionalidades de acordo com o que seu projeto realmente oferece.
2. **Requisitos**: Liste todas as dependências necessárias além do Flask e MySQL.
3. **Contribuições**: Se você tem um guia de contribuição específico, adicione-o aqui.
4. **Licença**: Adapte a seção de licença se você usar outra licença.

Depois de personalizar o README, você pode salvá-lo no diretório do seu projeto como `README.md`. Se precisar de mais alguma coisa, é só avisar!
