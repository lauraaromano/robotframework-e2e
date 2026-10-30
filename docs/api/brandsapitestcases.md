
# Casos de Teste — API de Marcas

## API — Marcas

### CT-057 — Listar todas as marcas com sucesso

**Objetivo:**  
Validar se a API retorna corretamente a lista de todas as marcas cadastradas na aplicação.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `GET`
- Endpoint: Lista de marcas.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição GET para o endpoint de listagem de marcas.
3. Validar o código de resposta HTTP.
4. Interpretar o corpo da resposta.
5. Verificar se a propriedade `brands` não está vazia.

**Resultado esperado:**  
A API deve retornar o código HTTP `200` e apresentar uma lista de marcas não vazia no corpo da resposta.

**Prioridade:** Alta

**Tipo:** API | Funcional | Positivo

---

### CT-058 — Não permitir requisição PUT na lista de marcas

**Objetivo:**  
Validar se a API impede a utilização do método PUT no endpoint de listagem de marcas, retornando o código de resposta e a mensagem de erro esperados.

**Pré-condições:**  
API disponível e ambiente de testes preparado para execução das requisições.

**Dados de teste:**

- Método HTTP: `PUT`
- Endpoint: Lista de marcas.

**Passos:**

1. Preparar o ambiente de testes da API.
2. Enviar uma requisição PUT para o endpoint de listagem de marcas.
3. Validar o código de resposta HTTP.
4. Validar a mensagem retornada pela API.

**Resultado esperado:**  
A API deve rejeitar a requisição PUT, retornando o código HTTP `405` e a mensagem:

`This request method is not supported.`

**Prioridade:** Alta

**Tipo:** API | Funcional | Negativo
