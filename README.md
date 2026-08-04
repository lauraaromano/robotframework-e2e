# 🤖 Robot Framework – Automação de Testes E2E

Projeto de automação de testes End-to-End (E2E) desenvolvido com **Robot Framework**, **Python** e **SeleniumLibrary**, utilizando o site **Automation Exercise** como aplicação de testes.

O projeto foi criado com o objetivo de praticar automação web, aplicando boas práticas de organização, reutilização de código e estruturação de testes.

---

## 🚀 Tecnologias

- Robot Framework
- Python
- SeleniumLibrary
- Selenium
- WebDriver Manager
- Git & GitHub

---

## 📁 Estrutura do Projeto

```
robotframework-e2e/
│
├── tests/              # Casos de teste
├── resources/
│   ├── pages/          # Page Objects
│   ├── keywords/       # Keywords reutilizáveis
│   ├── variables/      # Variáveis do projeto
│   └── fixtures/       # Dados de teste
│
├── results/            # Relatórios de execução
├── requirements.txt
└── README.md
```

---

## ⚙️ Pré-requisitos

- Python 3.10+
- Robot Framework
- SeleniumLibrary
- Google Chrome
- ChromeDriver

---

## 📦 Instalação

Clone o repositório:

```bash
git clone https://github.com/lauraaromano/robotframework-e2e.git

cd robotframework-e2e
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

---

## ▶️ Executando os testes

Executar todos os testes:

```bash
robot tests/
```

Executar uma suíte específica:

```bash
robot tests/login.robot
```

---

## ✅ Cenários Automatizados

- Cadastro de usuário
- Login
- Logout
- Pesquisa de produtos
- Carrinho de compras
- Checkout
- Validação de mensagens
- Fluxos positivos e negativos

---

## 📊 Relatórios

Após a execução dos testes, o Robot Framework gera automaticamente:

- `report.html`
- `log.html`
- `output.xml`

Os arquivos ficam disponíveis na pasta **results/**.

---

## 🎯 Objetivo

Este projeto foi desenvolvido para fins de estudo e portfólio, demonstrando conhecimentos em automação de testes utilizando Robot Framework, organização de suítes de teste, reutilização de keywords e aplicação de boas práticas em automação web.

---

## 👩‍💻 Desenvolvedora

**Laura Romano**

- LinkedIn: https://www.linkedin.com/in/laura-romano-br/
- GitHub: https://github.com/lauraaromano