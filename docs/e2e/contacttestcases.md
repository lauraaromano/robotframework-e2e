# Casos de Teste — Contact

## Contact

### CT-001 — Enviar formulário de contato com sucesso

**Objetivo:**  
Validar se o usuário consegue enviar uma mensagem pelo formulário de contato preenchendo os campos obrigatórios corretamente.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: `Hermione Gomes`
- E-mail: `hermione@gmail.com`
- Assunto: `Dúvida`
- Mensagem: `Gostaria de obter mais informações.`

**Passos:**

1. Acessar a página de contato.
2. Informar um nome válido.
3. Informar um e-mail válido.
4. Informar um assunto.
5. Informar uma mensagem.
6. Enviar o formulário.

**Resultado esperado:**  
A mensagem deve ser enviada com sucesso e o sistema deve apresentar a confirmação do envio.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-002 — Não permitir envio sem preencher o campo Subject

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando o campo Subject não é preenchido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: `Hermione Gomes`
- E-mail: `hermione@gmail.com`
- Assunto: vazio
- Mensagem: `Gostaria de obter mais informações.`

**Passos:**

1. Acessar a página de contato.
2. Informar um nome válido.
3. Informar um e-mail válido.
4. Deixar o campo Subject vazio.
5. Informar uma mensagem.
6. Enviar o formulário.
7. Validar o estado do campo Subject.

**Resultado esperado:**  
O formulário não deve ser enviado e o campo Subject deve ser identificado como inválido.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-003 — Não permitir envio sem preencher o campo Message

**Objetivo:**  
Validar se o sistema impede o envio do formulário quando o campo Message não é preenchido.

**Pré-condições:**  
Aplicação disponível.

**Dados de teste:**

- Nome: `Hermione Gomes`
- E-mail: `hermione@gmail.com`
- Assunto: `Dúvida`
- Mensagem: vazio

**Passos:**

1. Acessar a página de contato.
2. Informar um nome válido.
3. Informar um e-mail válido.
4. Informar um assunto.
5. Deixar o campo Message vazio.
6. Enviar o formulário.
7. Validar o estado do campo Message.

**Resultado esperado:**  
O formulário não deve ser enviado e o campo Message deve ser identificado como inválido.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo