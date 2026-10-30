# Casos de Teste — Cart

## Cart

### CT-015 — Adicionar um produto ao carrinho com sucesso

**Objetivo:**  
Validar se o usuário consegue adicionar um produto ao carrinho e se o produto adicionado é exibido corretamente no carrinho.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto: primeiro produto disponível na página Products.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Selecionar o primeiro produto disponível.
5. Adicionar o produto ao carrinho.
6. Continuar a compra.
7. Acessar o carrinho.
8. Validar se o produto adicionado está presente no carrinho.

**Resultado esperado:**  
O produto deve ser adicionado com sucesso e exibido corretamente no carrinho.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-016 — Adicionar múltiplos produtos ao carrinho

**Objetivo:**  
Validar se o usuário consegue adicionar múltiplos produtos ao carrinho e se todos são exibidos corretamente.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto 1: primeiro produto disponível.
* Produto 2: segundo produto disponível.
* Produto 3: terceiro produto disponível.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Adicionar o primeiro produto ao carrinho.
5. Continuar a compra.
6. Adicionar o segundo produto ao carrinho.
7. Continuar a compra.
8. Adicionar o terceiro produto ao carrinho.
9. Continuar a compra.
10. Acessar o carrinho.
11. Validar se o primeiro produto está presente no carrinho.
12. Validar se o segundo produto está presente no carrinho.
13. Validar se o terceiro produto está presente no carrinho.

**Resultado esperado:**  
Os três produtos devem ser adicionados com sucesso e exibidos corretamente no carrinho.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-017 — Remover um produto do carrinho

**Objetivo:**  
Validar se o usuário consegue remover um produto do carrinho.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto: primeiro produto disponível.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Adicionar o primeiro produto ao carrinho.
5. Continuar a compra.
6. Acessar o carrinho.
7. Validar se o produto está presente no carrinho.
8. Remover o produto.
9. Validar se o produto foi removido do carrinho.

**Resultado esperado:**  
O produto deve ser removido com sucesso e não deve mais estar presente no carrinho.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-018 — Remover todos os produtos e exibir o carrinho vazio

**Objetivo:**  
Validar se o usuário consegue remover todos os produtos adicionados e se o carrinho apresenta corretamente o estado vazio.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto 1: primeiro produto disponível.
* Produto 2: segundo produto disponível.
* Produto 3: terceiro produto disponível.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Adicionar o primeiro produto ao carrinho.
5. Continuar a compra.
6. Adicionar o segundo produto ao carrinho.
7. Continuar a compra.
8. Adicionar o terceiro produto ao carrinho.
9. Continuar a compra.
10. Acessar o carrinho.
11. Validar se os três produtos estão presentes no carrinho.
12. Remover o primeiro produto.
13. Remover o segundo produto.
14. Remover o terceiro produto.
15. Validar se o carrinho está vazio.

**Resultado esperado:**  
Todos os produtos devem ser removidos com sucesso e o sistema deve exibir a mensagem **"Cart is empty!"**.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-019 — Exibir a quantidade correta de cada produto no carrinho

**Objetivo:**  
Validar se o carrinho exibe corretamente a quantidade do produto adicionado.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto: primeiro produto disponível.
* Quantidade: conforme quantidade adicionada ao carrinho.

**Passos:**

1. Realizar login com um usuário válido.
2. Acessar o carrinho.
3. Limpar o carrinho.
4. Acessar a página Products.
5. Selecionar o primeiro produto disponível.
6. Adicionar o produto ao carrinho.
7. Validar a quantidade exibida para o produto no carrinho.

**Resultado esperado:**  
A quantidade exibida no carrinho deve corresponder à quantidade do produto adicionada.

**Prioridade:** Alta

**Tipo:** E2E | Validação | Positivo

---

### CT-020 — Exibir mensagem de carrinho vazio quando nenhum produto foi adicionado

**Objetivo:**  
Validar se o sistema exibe corretamente a mensagem de carrinho vazio quando não existem produtos adicionados.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produtos no carrinho: nenhum.

**Passos:**

1. Realizar login com um usuário válido.
2. Acessar o carrinho.
3. Limpar o carrinho.
4. Acessar novamente o carrinho.
5. Validar a mensagem apresentada.

**Resultado esperado:**  
O sistema deve exibir a mensagem **"Cart is empty!"**.

**Prioridade:** Média

**Tipo:** E2E | Funcional | Positivo

---

### CT-021 — Manter os produtos no carrinho após navegar para outra página do site

**Objetivo:**  
Validar se o produto permanece no carrinho após o usuário navegar para outra página do site.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto: primeiro produto disponível.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Selecionar o primeiro produto disponível.
5. Adicionar o produto ao carrinho.
6. Continuar a compra.
7. Acessar a página Home.
8. Acessar outra página do site.
9. Acessar o carrinho.
10. Validar se o produto permanece presente no carrinho.

**Resultado esperado:**  
O produto adicionado deve permanecer no carrinho após a navegação para outras páginas do site.

**Prioridade:** Alta

**Tipo:** E2E | Funcional | Positivo

---

### CT-022 — Calcular corretamente o preço total do produto no carrinho

**Objetivo:**  
Validar se o preço total de cada produto no carrinho é calculado corretamente com base no preço unitário e na quantidade.

**Pré-condições:**  
Aplicação disponível e usuário cadastrado.

**Dados de teste:**

* Produto 1: primeiro produto disponível — quantidade `2`.
* Produto 2: segundo produto disponível — quantidade `3`.
* Produto 3: terceiro produto disponível — quantidade `1`.
* Regra de cálculo: `Preço unitário × Quantidade = Preço total`.

**Passos:**

1. Acessar a página de login.
2. Realizar login com um usuário válido.
3. Acessar a página Products.
4. Adicionar o primeiro produto ao carrinho duas vezes.
5. Adicionar o segundo produto ao carrinho três vezes.
6. Adicionar o terceiro produto ao carrinho uma vez.
7. Acessar o carrinho.
8. Obter o preço unitário do primeiro produto.
9. Obter a quantidade do primeiro produto.
10. Obter o preço total do primeiro produto.
11. Validar se `preço × quantidade = total`.
12. Repetir a validação para o segundo produto.
13. Repetir a validação para o terceiro produto.

**Resultado esperado:**  
O preço total de cada produto deve corresponder ao resultado da multiplicação entre seu preço unitário e sua quantidade.

**Prioridade:** Alta

**Tipo:** E2E | Regra de Negócio | Positivo