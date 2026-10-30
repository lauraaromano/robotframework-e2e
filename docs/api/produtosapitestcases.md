# Casos de Teste — API de Produtos

## API — Produtos

### CT-064 — Listar todos os produtos com sucesso

**Objetivo:**  
Validar se a API retorna corretamente a lista de todos os produtos cadastrados na aplicação.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `GET`
- Endpoint: Lista de produtos.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição GET para o endpoint de listagem de produtos.
3. Validar o código de resposta HTTP.
4. Interpretar o corpo da resposta.
5. Verificar se a propriedade `products` não está vazia.

**Resultado esperado:**  
A API deve retornar o código HTTP `200` e apresentar uma lista de produtos não vazia no corpo da resposta.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-065 — Não permitir requisição POST na lista de produtos

**Objetivo:**  
Validar se a API impede a utilização do método POST no endpoint de listagem de produtos.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- Endpoint: Lista de produtos.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição POST para o endpoint de listagem de produtos.
3. Validar o código de resposta HTTP.
4. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição POST, retornando o código HTTP `405` e a mensagem:

`This request method is not supported.`

**Prioridade:** Alta

**Tipo:** API | Funcional | Negativo

---

### CT-066 — Buscar produtos utilizando termos válidos

**Objetivo:**  
Validar se a API consegue localizar e retornar produtos correspondentes aos termos informados no parâmetro de busca.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- Termos de busca:
  - `top`
  - `tshirt`
  - `jean`

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição de busca utilizando o termo `top`.
3. Validar o código de resposta HTTP.
4. Interpretar o corpo da resposta.
5. Verificar se a propriedade `products` não está vazia.
6. Repetir o procedimento utilizando o termo `tshirt`.
7. Repetir o procedimento utilizando o termo `jean`.
8. Validar os resultados retornados para cada termo pesquisado.

**Resultado esperado:**  
A API deve retornar o código HTTP `200` para todos os termos informados e apresentar uma lista de produtos não vazia, contendo resultados correspondentes às buscas realizadas.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-067 — Não realizar busca de produtos sem informar o parâmetro search_product

**Objetivo:**  
Validar se a API impede a realização de uma busca quando o parâmetro obrigatório `search_product` não é informado na requisição.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `POST`
- Parâmetro `search_product`: ausente.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição de busca de produtos sem informar o parâmetro `search_product`.
3. Validar o código de resposta HTTP.
4. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição e retornar o código HTTP `400`, acompanhado da mensagem:

`Bad request, search_product parameter is missing in POST request.`

**Prioridade:** Alta

**Tipo:** API | Validação | Negativo
