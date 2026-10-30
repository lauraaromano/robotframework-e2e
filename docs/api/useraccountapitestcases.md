# Casos de Teste — API de Conta de Usuário

## API — Conta de Usuário

### CT-068 — Criar uma conta de usuário com sucesso

**Objetivo:** Verificar se a API permite criar uma conta de usuário quando os parâmetros obrigatórios são informados corretamente.

**Pré-condições:**
- API disponível para requisições.
- Ambiente de testes preparado.

**Dados de teste:**
- Email: gerado dinamicamente.
- Senha: `Senha@123`.

**Passos:**
1. Gerar um email único para o cadastro.
2. Informar o email e a senha.
3. Enviar uma requisição para criar a conta.
4. Verificar o código de resposta.
5. Verificar a mensagem retornada.

**Resultado esperado:**
- A conta deve ser criada com sucesso.
- A API deve retornar o status HTTP `201`.
- A mensagem retornada deve ser `User created!`.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-069 — Não criar uma conta de usuário sem o parâmetro email

**Objetivo:** Verificar se a API impede a criação de uma conta quando o parâmetro `email` não é informado.

**Pré-condições:**
- API disponível para requisições.
- Ambiente de testes preparado.

**Dados de teste:**
- Parâmetro ausente: `email`.

**Passos:**
1. Enviar uma requisição para criar uma conta sem informar o parâmetro `email`.
2. Verificar o código de resposta.
3. Consultar o conteúdo retornado pela API.

**Resultado esperado:**
- A conta não deve ser criada.
- A API deve retornar o status HTTP `400`.

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo

---

### CT-070 — Não criar uma conta de usuário sem o parâmetro senha

**Objetivo:** Verificar se a API impede a criação de uma conta quando o parâmetro `password` não é informado.

**Pré-condições:**
- API disponível para requisições.
- Ambiente de testes preparado.

**Dados de teste:**
- Parâmetro ausente: `password`.

**Passos:**
1. Enviar uma requisição para criar uma conta sem informar o parâmetro `password`.
2. Verificar o código de resposta.
3. Consultar o conteúdo retornado pela API.

**Resultado esperado:**
- A conta não deve ser criada.
- A API deve retornar o status HTTP `400`.

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo

---

### CT-071 — Excluir uma conta de usuário com sucesso

**Objetivo:** Verificar se a API permite excluir uma conta existente utilizando as credenciais corretas.

**Pré-condições:**
- API disponível para requisições.
- Usuário previamente cadastrado.

**Dados de teste:**
- Email: email do usuário cadastrado.
- Senha: senha do usuário cadastrado.

**Passos:**
1. Criar ou obter um usuário previamente cadastrado.
2. Informar o email e a senha correspondentes à conta.
3. Enviar uma requisição para excluir a conta.
4. Verificar o código de resposta.
5. Verificar a mensagem retornada.

**Resultado esperado:**
- A conta deve ser excluída com sucesso.
- A API deve retornar o status HTTP `200`.
- A mensagem retornada deve ser `Account deleted!`.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-072 — Não excluir uma conta de usuário sem email e senha

**Objetivo:** Verificar se a API impede a exclusão de uma conta quando as credenciais obrigatórias não são informadas.

**Pré-condições:**
- API disponível para requisições.
- Ambiente de testes preparado.

**Dados de teste:**
- Email: não informado.
- Senha: não informada.

**Passos:**
1. Enviar uma requisição para excluir uma conta sem informar email e senha.
2. Verificar o código de resposta.
3. Consultar o conteúdo retornado pela API.

**Resultado esperado:**
- A conta não deve ser excluída.
- A API deve retornar o status HTTP `400`.

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo

---

### CT-073 — Atualizar uma conta de usuário com sucesso

**Objetivo:** Verificar se a API permite atualizar os dados de uma conta existente utilizando as credenciais do usuário.

**Pré-condições:**
- API disponível para requisições.
- Usuário previamente cadastrado.

**Dados de teste:**
- Email: email do usuário cadastrado.
- Senha: senha do usuário cadastrado.

**Passos:**
1. Criar ou obter um usuário previamente cadastrado.
2. Informar as credenciais da conta.
3. Enviar uma requisição para atualizar os dados do usuário.
4. Verificar o código de resposta.
5. Verificar a mensagem retornada.

**Resultado esperado:**
- A atualização deve ser realizada com sucesso.
- A API deve retornar o status HTTP `200`.
- A mensagem retornada deve ser `User updated!`.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-074 — Consultar os detalhes de um usuário pelo email

**Objetivo:** Verificar se a API permite consultar os dados de um usuário utilizando seu email como parâmetro de busca.

**Pré-condições:**
- API disponível para requisições.
- Usuário previamente cadastrado.

**Dados de teste:**
- Email: email do usuário cadastrado.

**Passos:**
1. Criar ou obter um usuário previamente cadastrado.
2. Enviar uma requisição para consultar os dados do usuário pelo email.
3. Verificar o código de resposta.
4. Analisar o corpo da resposta.
5. Comparar o email retornado com o email utilizado na consulta.

**Resultado esperado:**
- A API deve retornar o status HTTP `200`.
- Os detalhes do usuário devem ser retornados.
- O email presente em `user.email` deve corresponder ao email utilizado na consulta.

**Prioridade:** Alta

**Tipo:** API | Consulta | Positivo
