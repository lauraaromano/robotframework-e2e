# Casos de Teste — Logout

## Logout

### CT-008 — Realizar logout com sucesso

**Objetivo:**  
Validar se o usuário consegue encerrar sua sessão corretamente.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

- E-mail: usuário cadastrado
- Senha: senha cadastrada

**Passos:**

1. Acessar a página de login.
2. Informar um e-mail válido.
3. Informar uma senha válida.
4. Realizar o login.
5. Validar o acesso à página inicial.
6. Selecionar a opção **Logout**.
7. Validar a página exibida após o logout.

**Resultado esperado:**  
O usuário deve ser desconectado com sucesso e ser redirecionado para a página de login.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo