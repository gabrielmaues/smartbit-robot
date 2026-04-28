Smartbit Automation - Testes End-to-End
Projeto de automação de testes end-to-end desenvolvido para a plataforma Smartbit.
A automação cobre diferentes camadas da aplicação, incluindo testes web, mobile e API, garantindo maior confiabilidade e qualidade do sistema.
Utilizando o ecossistema do Robot Framework, as bibliotecas Browser (Playwright) para testes web e AppiumLibrary para testes mobile. Além disso, também utilizei a biblioteca RequestsLibrary para a execução de chamadas de API.

Este projeto foi construído durante o curso Universo Robot Framework, onde foram implementados diversos cenários automatizados para o Smartbit — um sistema fictício voltado à gestão de academias.
A proposta aqui é simular um ambiente real de testes, aplicando boas práticas de automação, organização e manutenção de código.

Tecnologias utilizadas:
Robot Framework
  Browser (Playwright) → testes web
  AppiumLibrary → testes mobile
  RequestsLibrary → testes de API
Python → scripts auxiliares
Faker → geração de dados dinâmicos
JSONLibrary → gerenciamento de massa de testes
PostgreSQL → banco de dados (via Docker)
dotenv → variáveis de ambiente
Page Object Model (POM) → organização dos testes

Cenários de testes automatizados:
Web
  Login
  Pré-cadastro de clientes
  Matrícula de alunos
Mobile
  Login
  Registro de medidas corporais
API
  Validações e integrações via requisições HTTP

Pré-requisitos
Python (versão recomendada: 3.13.7 ou superior)
Android Studio (versão Otter 2025 ou superior)
Docker Desktop (versão 4.45.0 ou superior)

Sistema alvo dos testes
O Smartbit é um sistema fictício de gestão de academias, que contempla:
  Uma interface web para cadastro e gestão de alunos
  Um aplicativo mobile para acompanhamento de medidas

O projeto da aplicação pode ser acessado aqui:
https://github.com/gabrielmaues/smartbit-app

Como executar o projeto de testes
Clonar o repositório
git clone https://github.com/gabrielmaues/smartbit-robot.git
cd smartbit-robot
Instalar dependências
pip install -r requirements.txt
Configurar variáveis de ambiente
Criar arquivo .env na raiz do projeto com os valores:

# Database
DB_HOST=localhost
DB_NAME=smartbit
DB_USER=postgres
DB_PASS=QAx@123

# API
API_URL=http://localhost:3333

# Web
BASE_URL=http://localhost:3000
BROWSER=chromium
HEADLESS=False

Executar testes web
cd web
robot -d ./logs tests/

Executar testes mobile
Abrir o Android Studio, ir em More Actions > Virtual Device Manager e iniciar o dispositivo mobile.

Então:
cd mobile
robot -d ./logs tests/
