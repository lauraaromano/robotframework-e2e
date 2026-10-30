
# Casos de Teste — Checkout

## Checkout

### CT-023 — Realizar checkout com sucesso preenchendo o campo de comentário

**Objetivo:**  
Validar se o usuário consegue finalizar uma compra com sucesso ao preencher o campo de comentário durante o checkout.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: `Milena`
- Número do cartão: `1234567890123456`
- CVC: `123`
- Mês de expiração: `12`
- Ano de expiração: `2025`
- Comentário: `Teste de comentário`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Preencher o campo de comentário.
7. Informar os dados de pagamento.
8. Confirmar o pagamento.
9. Validar a mensagem de confirmação.
10. Verificar se o carrinho está vazio.

**Resultado esperado:**  
A compra deve ser finalizada com sucesso, o sistema deve exibir a mensagem `Order Placed!` e o carrinho deve estar vazio.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-024 — Realizar checkout com sucesso sem preencher o campo de comentário

**Objetivo:**  
Validar se o usuário consegue finalizar uma compra sem informar um comentário durante o checkout.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: `Milena`
- Número do cartão: `1234567890123456`
- CVC: `123`
- Mês de expiração: `12`
- Ano de expiração: `2025`
- Comentário: vazio

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Deixar o campo de comentário vazio.
7. Informar os dados de pagamento.
8. Confirmar o pagamento.
9. Validar a mensagem de confirmação.
10. Verificar se o carrinho está vazio.

**Resultado esperado:**  
A compra deve ser finalizada com sucesso mesmo sem o preenchimento do campo de comentário. O sistema deve exibir a mensagem `Order Placed!` e o carrinho deve estar vazio.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-025 — Não realizar checkout sem preencher o campo Name on Card

**Objetivo:**  
Validar se o sistema impede a finalização da compra quando o campo de nome no cartão não é preenchido.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: vazio
- Número do cartão: `1234567890123456`
- CVC: `123`
- Mês de expiração: `12`
- Ano de expiração: `2025`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Informar os dados de pagamento, deixando o campo Name on Card vazio.
7. Tentar confirmar o pagamento.
8. Validar o estado do campo Name on Card.

**Resultado esperado:**  
A compra não deve ser finalizada e o campo Name on Card deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-026 — Não realizar checkout sem preencher o campo Card Number

**Objetivo:**  
Validar se o sistema impede a finalização da compra quando o campo de número do cartão não é preenchido.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: `Milena`
- Número do cartão: vazio
- CVC: `123`
- Mês de expiração: `12`
- Ano de expiração: `2025`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Informar os dados de pagamento, deixando o campo Card Number vazio.
7. Tentar confirmar o pagamento.
8. Validar o estado do campo Card Number.

**Resultado esperado:**  
A compra não deve ser finalizada e o campo Card Number deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-027 — Não realizar checkout sem preencher o campo CVC

**Objetivo:**  
Validar se o sistema impede a finalização da compra quando o campo CVC não é preenchido.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: `Milena`
- Número do cartão: `1234567890123456`
- CVC: vazio
- Mês de expiração: `12`
- Ano de expiração: `2025`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Informar os dados de pagamento, deixando o campo CVC vazio.
7. Tentar confirmar o pagamento.
8. Validar o estado do campo CVC.

**Resultado esperado:**  
A compra não deve ser finalizada e o campo CVC deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-028 — Não realizar checkout sem preencher o campo Expiration

**Objetivo:**  
Validar se o sistema impede a finalização da compra quando o campo de mês de expiração do cartão não é preenchido.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: `Milena`
- Número do cartão: `1234567890123456`
- CVC: `123`
- Mês de expiração: vazio
- Ano de expiração: `2025`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Informar os dados de pagamento, deixando o campo de mês de expiração vazio.
7. Tentar confirmar o pagamento.
8. Validar o estado do campo Expiration.

**Resultado esperado:**  
A compra não deve ser finalizada e o campo de mês de expiração deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-029 — Não realizar checkout sem preencher nenhum dos campos de pagamento

**Objetivo:**  
Validar se o sistema impede a finalização da compra quando todos os campos obrigatórios de pagamento permanecem vazios.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Nome no cartão: vazio
- Número do cartão: vazio
- CVC: vazio
- Mês de expiração: vazio
- Ano de expiração: vazio

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Deixar todos os campos de pagamento vazios.
7. Tentar confirmar o pagamento.
8. Validar o estado do campo Name on Card.

**Resultado esperado:**  
A compra não deve ser finalizada e o campo Name on Card deve ser identificado como inválido pelo navegador.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Negativo

---

### CT-030 — Realizar download da fatura após finalizar a compra

**Objetivo:**  
Validar se o usuário consegue realizar o download da fatura após concluir uma compra com sucesso.

**Pré-condições:**  
Aplicação disponível, usuário previamente cadastrado e produto adicionado ao carrinho.

**Dados de teste:**

- Comentário: `Teste de comentário`
- Nome no cartão: `Milena`
- Número do cartão: `1234567890123456`
- CVC: `123`
- Mês de expiração: `12`
- Ano de expiração: `2025`

**Passos:**

1. Acessar a aplicação.
2. Realizar login com um usuário cadastrado.
3. Adicionar um produto ao carrinho.
4. Acessar o carrinho.
5. Prosseguir para o checkout.
6. Preencher o campo de comentário.
7. Informar os dados de pagamento.
8. Confirmar o pagamento.
9. Validar a mensagem de confirmação.
10. Acionar a opção de download da fatura.
11. Verificar se o carrinho está vazio.

**Resultado esperado:**  
A compra deve ser finalizada com sucesso, o sistema deve exibir a mensagem `Order Placed!`, permitir o download da fatura e manter o carrinho vazio.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

**Observação:** Os casos CT-010 a CT-014 validam campos obrigatórios individualmente e em conjunto. Ainda podem ser adicionados testes de formatos inválidos, como número de cartão com quantidade incorreta de dígitos, CVC com tamanho inadequado ou data de expiração inválida.
