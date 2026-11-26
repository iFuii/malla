# Guia de Git: Branches e Commits

Este documento define o padrão de **nomenclatura de branches** e **mensagens de commit** do projeto.

## Sumário

1. [Introdução rápida](#1-introdução-rápida)
2. [Padrão de nomenclatura de branches](#2-padrão-de-nomenclatura-de-branches)
3. [Padrão de commits](#3-padrão-de-commits-conventional-commits-simplificado)
4. [Exemplos práticos e boas práticas](#4-exemplos-práticos-e-boas-práticas)

---

## 1. Introdução rápida

**Conventional Commits** é uma convenção para escrever mensagens de commit com uma estrutura previsível: cada mensagem começa com um **tipo** (`feat`, `fix`, etc.) que indica a intenção da mudança, seguido de uma descrição curta.

Nós usamos uma versão enxuta dela, com apenas 4 tipos.

**Por que um padrão de branches e commits?** Porque, quando todo mundo nomeia e descreve as mudanças do mesmo jeito, o histórico do Git passa a ser legível: só pelo nome de uma branch ou pela mensagem de um commit já dá para saber o tipo de trabalho, onde ele aconteceu e o que foi feito. Isso deixa a revisão de PRs mais direta e facilita rastrear quando e por que algo mudou.

---

## 2. Padrão de nomenclatura de branches

Toda branch deve ser escrita:

- em **letras minúsculas**;
- **sem acentos** nem caracteres especiais;
- com palavras separadas por **hífen** (`kebab-case`);
- seguindo exatamente uma das três estruturas abaixo.

| Prefixo | Estrutura | Quando usar |
|---|---|---|
| `feature` | `feature/<nome-da-feature>/<o-que-esta-fazendo>` | Desenvolvimento de **novas funcionalidades**. |
| `fixes` | `fixes/<nome-da-feature>/<o-que-esta-arrumando>` | Correção de **bugs e problemas**. |
| `refact` | `refact/<nome-da-feature>/<o-que-esta-refatorando>` | **Refatoração** e reorganização de código. |

**Como montar o nome:**

1. **Prefixo:** o tipo de trabalho (`feature`, `fixes` ou `refact`). Ele diz de cara qual é a natureza da branch.
2. **`<nome-da-feature>`:** o módulo ou funcionalidade afetada (ex.: `user-auth`, `checkout`). Agrupa as branches por assunto.
3. **`<o-que-esta-fazendo>`:** descrição curta do que será feito naquela branch. Diferencia branches da mesma feature.

### Exemplos

| Tipo | Exemplo de branch | O que representa |
|---|---|---|
| `feature` | `feature/user-auth/add-jwt-login` | Nova funcionalidade de login com JWT. |
| `feature` | `feature/checkout/implement-pix-payment` | Novo método de pagamento via Pix. |
| `feature` | `feature/product-catalog/add-search-filters` | Filtros de busca no catálogo. |
| `fixes` | `fixes/user-auth/fix-token-expiration` | Correção na expiração do token. |
| `fixes` | `fixes/checkout/fix-duplicated-orders` | Correção de pedidos duplicados. |
| `fixes` | `fixes/notifications/fix-email-not-sent` | Correção de e-mails que não eram enviados. |
| `refact` | `refact/order-service/extract-validation-layer` | Extração da camada de validação do serviço de pedidos. |
| `refact` | `refact/user-auth/simplify-token-service` | Simplificação do serviço de tokens. |
| `refact` | `refact/product-catalog/reorganize-folders` | Reorganização de pastas do catálogo. |

---

## 3. Padrão de commits (Conventional Commits simplificado)

### Estrutura

```text
<acao>: <verbo no infinitivo> <o que esta fazendo>
```

| Parte | Descrição |
|---|---|
| `<acao>` | Um dos 4 tipos permitidos, sempre em minúsculas. |
| `:` + espaço | Separador obrigatório (dois-pontos seguido de um espaço). |
| `<verbo no infinitivo>` | O que o commit faz: `add`, `implement`, `fix`, `remove`, `update`... |
| `<o que esta fazendo>` | Complemento curto e objetivo sobre a mudança. |

### Os 4 tipos permitidos

| Tipo | Quando usar |
|---|---|
| **`feat`** | Implementação de **novas funcionalidades** no sistema. |
| **`refact`** | **Refatoração** de código: melhoria de estrutura, legibilidade ou performance **sem alterar a regra de negócio**. |
| **`fix`** | **Conserto de bugs**, erros ou comportamentos inesperados. |
| **`chore`** | Melhorias e tarefas do projeto que **não envolvem alteração direta no código da aplicação** (configurações, dependências, documentação, `.gitignore`). |

**Na dúvida entre `refact` e `fix`:**

- Se o comportamento **estava errado** e agora está certo, use **`fix`**.
- Se o comportamento **continua o mesmo**, mas o código ficou melhor, use **`refact`**.

---

## 4. Exemplos práticos e boas práticas

### Exemplo de referência

```text
feat: implement security configs and JWT validation
```

- `feat`: tipo da mudança (nova funcionalidade);
- `:`: separador;
- `implement`: verbo no infinitivo;
- `security configs and JWT validation`: o que foi feito.

### Exemplos por tipo

**`feat`: nova funcionalidade**

```bash
git commit -m "feat: implement security configs and JWT validation"
git commit -m "feat: add user registration endpoint"
git commit -m "feat: create product search with filters"
```

**`refact`: refatoração**

```bash
git commit -m "refact: extract price calculation into a separate service"
git commit -m "refact: simplify order status mapping"
git commit -m "refact: rename user DTO fields for consistency"
```

**`fix`: correção de bug**

```bash
git commit -m "fix: correct JWT expiration validation"
git commit -m "fix: prevent duplicated orders on double click"
git commit -m "fix: handle null value on user profile response"
```

**`chore`: tarefas do projeto**

```bash
git commit -m "chore: update dependencies to latest minor versions"
git commit -m "chore: add .env and build folders to .gitignore"
git commit -m "chore: document local setup in README"
```

### Boas práticas

1. **Faça commits pequenos e atômicos.** Cada commit deve fazer *uma* coisa e deixar o projeto funcionando.

2. **Não misture tipos no mesmo commit.** Refatoração, feature e correção vão em commits separados:

   ```bash
   git commit -m "refact: extract validation into a helper"
   git commit -m "feat: add CPF validation on registration"
   ```

3. **Revise o `git status` antes de commitar** e confira o que está na área de stage:

   ```bash
   git status
   git diff --staged
   ```

4. **Escreva a primeira linha curta**: até ~72 caracteres, em minúsculas e sem ponto final.

5. **Use o verbo no infinitivo:** `add`, `implement`, `remove`, `update`, `fix`.

6. **Uma branch, um propósito.** Se encontrar um bug fora do escopo no meio de uma feature, abra outra branch `fixes/...` para ele.

### Fluxo completo de exemplo

```bash
# 1. Atualize a base e crie a branch no padrão
git checkout main
git pull origin main
git checkout -b feature/user-auth/add-jwt-login

# 2. Trabalhe e confira o que mudou
git status
git diff

# 3. Adicione e commite em passos pequenos
git add src/security/
git commit -m "feat: implement security configs and JWT validation"

git add pom.xml
git commit -m "chore: add JWT library dependency"

# 4. Envie a branch e abra o Pull Request
git push -u origin feature/user-auth/add-jwt-login
```

---

## Cola rápida

**Branches**

```text
feature/<nome-da-feature>/<o-que-esta-fazendo>
fixes/<nome-da-feature>/<o-que-esta-arrumando>
refact/<nome-da-feature>/<o-que-esta-refatorando>
```

**Commits**

```text
<acao>: <verbo no infinitivo> <o que esta fazendo>
```

| Tipo | Resumo |
|---|---|
| `feat` | Nova funcionalidade |
| `refact` | Refatoração (sem mudar regra de negócio) |
| `fix` | Correção de bug |
| `chore` | Configuração, dependências, documentação, `.gitignore` |
