# Casos de Teste — API de Login

## API — Login

### CT-059 — Verificar login com dados válidos

**Objetivo:**  
Validar se a API identifica corretamente um usuário cadastrado quando são fornecidos e-mail e senha válidos.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- E-mail: usuário previamente cadastrado.
- Senha: senha correspondente ao usuário cadastrado.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Registrar um novo usuário para utilização no teste.
3. Enviar uma requisição de verificação de login utilizando o e-mail e a senha do usuário registrado.
4. Validar o código de resposta HTTP.
5. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve identificar o usuário cadastrado e retornar o código HTTP `200`, acompanhado da mensagem:

`User exists!`

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-060 — Não verificar login sem informar o parâmetro email

**Objetivo:**  
Validar se a API impede a verificação de login quando o parâmetro de e-mail não é informado na requisição.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- E-mail: ausente.
- Senha: `Senha@123`

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição de verificação de login sem informar o parâmetro de e-mail.
3. Informar uma senha válida no corpo da requisição.
4. Validar o código de resposta HTTP.
5. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição e retornar o código HTTP `400`, acompanhado da mensagem:

`Bad request, email or password parameter is missing in POST request.`

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo

---

### CT-061 — Não verificar login sem informar o parâmetro senha

**Objetivo:**  
Validar se a API impede a verificação de login quando o parâmetro de senha não é informado na requisição.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- E-mail: `qa.teste@teste.com`
- Senha: ausente.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição de verificação de login sem informar o parâmetro de senha.
3. Informar um e-mail no corpo da requisição.
4. Validar o código de resposta HTTP.
5. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição e retornar o código HTTP `400`, acompanhado da mensagem:

`Bad request, email or password parameter is missing in POST request.`

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo

---

### CT-062 — Não permitir requisição DELETE na verificação de login

**Objetivo:**  
Validar se a API impede a utilização do método DELETE no endpoint de verificação de login.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `DELETE`
- Endpoint: Verificação de login.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição DELETE para o endpoint de verificação de login.
3. Validar o código de resposta HTTP.
4. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição DELETE, retornando o código HTTP `405` e a mensagem:

`This request method is not supported.`

**Prioridade:** Alta

**Tipo:** API | Funcional | Negativo

---

### CT-063 — Retornar usuário não encontrado ao verificar login com dados inválidos

**Objetivo:**  
Validar se a API identifica corretamente uma tentativa de login com credenciais que não correspondem a um usuário cadastrado.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- E-mail: `naoexiste@teste.com`
- Senha: `senhaerrada`

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição de verificação de login utilizando um e-mail inexistente e uma senha inválida.
3. Validar o código de resposta HTTP.
4. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar as credenciais informadas e retornar o código HTTP `404`, acompanhado da mensagem:

`User not found!`

**Prioridade:** Alta

**Tipo:** API | Funcional | Negativo
