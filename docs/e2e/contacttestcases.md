# Casos de Teste — Contact

## Contact

### CT-001 — Enviar formulário de contato com sucesso

**Objetivo:**
Validar se o usuário consegue enviar uma mensagem pelo formulário de contato preenchendo os campos obrigatórios corretamente e anexando um arquivo.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: `sarahconnor@gmail.com`
* Assunto: `Dúvida sobre cadastro`
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Informar um e-mail válido.
7. Informar um assunto.
8. Informar uma mensagem.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.

**Resultado esperado:**
A mensagem deve ser enviada com sucesso e o sistema deve apresentar a confirmação do envio.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-002 — Tentar enviar uma mensagem de contato sem preencher o campo Nome

**Objetivo:**
Validar se o sistema impede ou trata corretamente o envio do formulário quando o campo Nome não é preenchido.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: vazio
* E-mail: `sarahconnor@gmail.com`
* Assunto: `Dúvida sobre cadastro`
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Deixar o campo Nome vazio.
6. Informar um e-mail válido.
7. Informar um assunto.
8. Informar uma mensagem.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.
11. Validar a resposta apresentada pelo sistema.

**Resultado esperado:**
O sistema deve impedir ou tratar o envio do formulário sem o preenchimento do campo Nome, apresentando a resposta de validação correspondente.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-003 — Tentar enviar uma mensagem de contato sem preencher o campo E-mail

**Objetivo:**
Validar se o sistema identifica a ausência do e-mail no formulário de contato.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: vazio
* Assunto: `Dúvida sobre cadastro`
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Deixar o campo E-mail vazio.
7. Informar um assunto.
8. Informar uma mensagem.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.
11. Validar o estado do campo E-mail.

**Resultado esperado:**
O formulário não deve ser enviado e o campo E-mail deve ser identificado como inválido.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-004 — Tentar enviar uma mensagem de contato com e-mail inválido

**Objetivo:**
Validar se o sistema trata um endereço de e-mail que não possui o caractere `@`.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: `sarahconnorgmail.com`
* Assunto: `Dúvida sobre cadastro`
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Informar um e-mail sem o caractere `@`.
7. Informar um assunto.
8. Informar uma mensagem.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.
11. Validar a resposta apresentada pelo sistema.

**Resultado esperado:**
O sistema deve identificar o e-mail informado como inválido e impedir ou tratar corretamente o envio do formulário.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-005 — Tentar enviar uma mensagem de contato sem preencher o campo Subject

**Objetivo:**
Validar se o sistema impede o envio do formulário quando o campo Subject não é preenchido.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: `sarahconnor@gmail.com`
* Assunto: vazio
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Informar um e-mail válido.
7. Deixar o campo Subject vazio.
8. Informar uma mensagem.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.
11. Validar a resposta apresentada pelo sistema.

**Resultado esperado:**
O formulário não deve ser enviado sem o preenchimento do campo Subject e o sistema deve apresentar a validação correspondente.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-006 — Tentar enviar uma mensagem de contato sem preencher o campo Message

**Objetivo:**
Validar se o sistema impede o envio do formulário quando o campo Message não é preenchido.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: `sarahconnor@gmail.com`
* Assunto: `Dúvida sobre cadastro`
* Mensagem: vazio
* Arquivo: `contact.png`

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Informar um e-mail válido.
7. Informar um assunto.
8. Deixar o campo Message vazio.
9. Anexar o arquivo `contact.png`.
10. Enviar o formulário.
11. Validar a resposta apresentada pelo sistema.

**Resultado esperado:**
O formulário não deve ser enviado sem o preenchimento do campo Message e o sistema deve apresentar a validação correspondente.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-007 — Enviar uma mensagem de contato sem selecionar nenhum arquivo

**Objetivo:**
Validar o comportamento do formulário quando o usuário preenche todos os campos obrigatórios, mas não seleciona nenhum arquivo.

**Pré-condições:**
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Nome: `Sarah`
* E-mail: `sarahconnor@gmail.com`
* Assunto: `Dúvida sobre cadastro`
* Mensagem: `Dúvida sobre cadastro`
* Arquivo: nenhum

**Passos:**

1. Acessar a página de cadastro/login.
2. Realizar login com um usuário válido.
3. Acessar a página inicial.
4. Acessar a página de contato.
5. Informar um nome válido.
6. Informar um e-mail válido.
7. Informar um assunto.
8. Informar uma mensagem.
9. Não selecionar nenhum arquivo.
10. Enviar o formulário.
11. Validar a resposta apresentada pelo sistema.

**Resultado esperado:**
O sistema deve processar corretamente o envio da mensagem sem a seleção de um arquivo, apresentando a confirmação correspondente.

**Prioridade:** Média

**Tipo:** E2E | Funcional | Positivo
