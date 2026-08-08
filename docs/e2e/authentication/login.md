# Casos de Teste — Login

## Login

### CT-001 — Realizar login com sucesso

**Objetivo:**  
Validar se o usuário consegue realizar login utilizando credenciais válidas.

**Pré-condições:**  
Aplicação disponível e usuário previamente cadastrado.

**Dados de teste:**

- E-mail: usuário cadastrado
- Senha: senha cadastrada

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail válido.
3. Informar uma senha válida.
4. Enviar o formulário de login.
5. Validar a página acessada.

**Resultado esperado:**  
O login deve ser realizado com sucesso e o usuário deve ser direcionado para a página inicial da aplicação.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-002 — Não realizar login com e-mail incorreto e senha correta

**Objetivo:**  
Validar se o sistema impede o login quando o e-mail informado é inválido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- E-mail: `invalidemail@gmail.com`
- Senha: `654321`

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail incorreto.
3. Informar uma senha válida.
4. Enviar o formulário de login.

**Resultado esperado:**  
O login não deve ser realizado e o sistema deve exibir a mensagem:

`Your email or password is incorrect!`

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Negativo

---

### CT-003 — Não realizar login com e-mail correto e senha incorreta

**Objetivo:**  
Validar se o sistema impede o login quando a senha informada é inválida.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

- E-mail: `sarahconnor@gmail.com`
- Senha: `123456`

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail válido.
3. Informar uma senha incorreta.
4. Enviar o formulário de login.

**Resultado esperado:**  
O login não deve ser realizado e o sistema deve exibir a mensagem:

`Your email or password is incorrect!`

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Negativo

---

### CT-004 — Não realizar login com o campo de e-mail vazio

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando o campo de e-mail não é preenchido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- E-mail: vazio
- Senha: `654321`

**Passos:**

1. Acessar a página de login.
2. Deixar o campo de e-mail vazio.
3. Informar uma senha válida.
4. Enviar o formulário de login.
5. Validar o estado do campo de e-mail.

**Resultado esperado:**  
O login não deve ser realizado e o campo de e-mail deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-005 — Não realizar login com o campo de senha vazio

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando o campo de senha não é preenchido.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

- E-mail: `sarahconnor@gmail.com`
- Senha: vazio

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail válido.
3. Deixar o campo de senha vazio.
4. Enviar o formulário de login.
5. Validar o estado do campo de senha.

**Resultado esperado:**  
O login não deve ser realizado e o campo de senha deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-006 — Não realizar login com e-mail e senha vazios

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando os campos de e-mail e senha não são preenchidos.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- E-mail: vazio
- Senha: vazio

**Passos:**

1. Acessar a página de login.
2. Deixar o campo de e-mail vazio.
3. Deixar o campo de senha vazio.
4. Enviar o formulário de login.
5. Validar o estado do campo de e-mail.

**Resultado esperado:**  
O login não deve ser realizado e o campo de e-mail deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-007 — Validar e-mail sem o caractere @

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando o e-mail informado não possui um formato válido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- E-mail: `sarahconnor`
- Senha: `654321`

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail sem o caractere `@`.
3. Informar uma senha válida.
4. Enviar o formulário de login.
5. Validar o estado do campo de e-mail.

**Resultado esperado:**  
O login não deve ser realizado e o campo de e-mail deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo