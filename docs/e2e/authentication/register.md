# Casos de Teste — Cadastro

## Cadastro

### CT-009 — Realizar cadastro de novo usuário com sucesso

**Objetivo:**  
Validar se um novo usuário consegue ser cadastrado corretamente na aplicação.

**Pré-condições:**  
Aplicação disponível e e-mail utilizado no cadastro ainda não registrado.

**Dados de teste:**

- Nome: usuário válido
- E-mail: e-mail válido e não cadastrado
- Demais informações: dados válidos para cadastro

**Passos:**

1. Acessar a página de cadastro.
2. Informar um nome válido.
3. Informar um e-mail válido.
4. Preencher as informações da conta.
5. Preencher as informações de endereço.
6. Finalizar o cadastro.
7. Validar a mensagem de criação da conta.
8. Continuar para a aplicação.
9. Excluir a conta criada.
10. Validar a mensagem de exclusão da conta.

**Resultado esperado:**  
O usuário deve ser cadastrado com sucesso, sendo exibida a mensagem `Account Created!`. Após a exclusão, deve ser exibida a mensagem `Account Deleted!`.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-010 — Não permitir cadastro com e-mail já existente

**Objetivo:**  
Validar se o sistema impede o cadastro de um usuário utilizando um e-mail já cadastrado.

**Pré-condições:**  
Aplicação disponível e e-mail já registrado no sistema.

**Dados de teste:**

- Nome: nome válido
- E-mail: e-mail já cadastrado

**Passos:**

1. Acessar a página de cadastro.
2. Informar um nome válido.
3. Informar um e-mail já existente.
4. Enviar o formulário de cadastro.

**Resultado esperado:**  
O cadastro não deve ser realizado e o sistema deve exibir a mensagem:

`Email Address already exist!`

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Negativo

---

### CT-011 — Não permitir cadastro com e-mail sem o caractere @

**Objetivo:**  
Validar se o sistema impede o cadastro quando o e-mail informado não possui um formato válido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: `Hermione Gomes`
- E-mail: `hermione`

**Passos:**

1. Acessar a página de cadastro.
2. Informar um nome válido.
3. Informar um e-mail sem o caractere `@`.
4. Enviar o formulário de cadastro.
5. Validar o estado do campo de e-mail.

**Resultado esperado:**  
O cadastro não deve prosseguir e o campo de e-mail deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-012 — Não permitir cadastro sem preencher o campo Name

**Objetivo:**  
Validar se o sistema impede o avanço do cadastro quando o campo Name não é preenchido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: vazio
- E-mail: `hermione@gmail.com`

**Passos:**

1. Acessar a página de cadastro.
2. Deixar o campo Name vazio.
3. Informar um e-mail válido.
4. Enviar o formulário de cadastro.
5. Validar o estado do campo Name.

**Resultado esperado:**  
O cadastro não deve prosseguir e o campo Name deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-013 — Não permitir cadastro sem preencher o campo Email

**Objetivo:**  
Validar se o sistema impede o avanço do cadastro quando o campo Email não é preenchido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: `Hermione Gomes`
- E-mail: vazio

**Passos:**

1. Acessar a página de cadastro.
2. Informar um nome válido.
3. Deixar o campo Email vazio.
4. Enviar o formulário de cadastro.
5. Validar o estado do campo Email.

**Resultado esperado:**  
O cadastro não deve prosseguir e o campo Email deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-014 — Não permitir cadastro sem preencher Name e Email

**Objetivo:**  
Validar se o sistema impede o avanço do cadastro quando os campos Name e Email não são preenchidos.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: vazio
- E-mail: vazio

**Passos:**

1. Acessar a página de cadastro.
2. Deixar o campo Name vazio.
3. Deixar o campo Email vazio.
4. Enviar o formulário de cadastro.
5. Validar o estado do campo Email.

**Resultado esperado:**  
O cadastro não deve prosseguir e o campo Email deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo