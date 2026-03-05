# 🧠 IC-RAG

Este projeto implementa um sistema de **RAG (Retrieval-Augmented Generation)** voltado para consultas inteligentes sobre dados armazenados em um banco PostgreSQL.  
A aplicação é composta por diferentes módulos que evoluíram ao longo do desenvolvimento — desde testes locais até uma versão de produção totalmente integrada ao banco de dados.

---

## 📁 Estrutura do Projeto

```
IC-RAG
├── prod/
    ├─── med/
    ├─── sql_atualizado/
    ├─── sql_original/
    ├─── agente_chat.py
    ├─── bd.py
    ├─── init_api_embeddings.py
    ├─── init_banco_via-BAK.py
    ├─── init_banco_via-SQL.py
    ├─── init_embeddings.py
    ├─── init_banco_via-SQL.py
    ├─── init_embeddings.py
    ├─── mvp.py
    ├─── navegadores_json.py
    ├─── teste.py
├── README.md
└── requirements.txt
```

### 📦 Descrição das pastas e arquivos

- **`prod/`**  
  Versão preparada para **ambiente de produção**, com código ajustado para o contexto real de execução e acesso ao banco de dados.  
  Inclui scripts SQL e utilitários para inicialização e carregamento de embeddings.

- **`med/`**  
  Arquivos para realização de relatórios sobre a veracidade do banco de dados

- **`sql_atualizado/` e `sql_original/`**  
  Arquivos para reconstrução do banco de dados

- **`requirements.txt`**  
  Lista todas as dependências necessárias para execução do projeto.

---

## ⚙️ Como Rodar o Projeto

### 1️⃣ Instale as dependências

Certifique-se de ter o **Python 3.10+** instalado, e depois execute no diretório IC-RAG:

| Sistema Operacional | Criar venv | Ativar venv | Instalar bibliotecas |
|:--------------------|:----------:|:-----------:|:---------------------:|
| Windows | `py -m venv venv` | `.\venv\Scripts\activate` | `pip install -r requirements.txt` |
| Mac/Linux | `python3 -m venv venv` | `source venv/bin/activate` | `pip install -r requirements.txt` |

---

### 2️⃣ Configure o OLLama

O sistema utiliza o **OLLama** para execução de modelos de linguagem localmente.  
Verifique se o OLLama está instalado e que os modelos necessários estão disponíveis, digitando em um terminal qualquer (variáveis de ambiente já configuradas):

```bash
ollama pull qwen2:7b
ollama pull embeddinggemma:latest
ollama pull phi3:3.8b
```

---

### 3️⃣ Prepare o banco de dados

O sistema depende de um banco de dados **SQLServer** já populado.  
Para criar e popular o banco você tem duas opções, via .sql ou .bak:

Via terminal entre no diretório do projeto `IC-RAG` e depois em `prod`, depois execute na linha de comando

```
py init_banco_via_SQL.py
```

ou 

```
py init_banco_via_BAK.py
```

Execute esses scripts para criar as tabelas e carregar os dados necessários. Caso opte por `init_banco_via_BAK.py`, o próximo passo não precisará ser executado

---

### 4️⃣ Gere os embeddings iniciais

Antes de iniciar o sistema, rode o script responsável por criar os embeddings e armazená-los no banco:

```bash
py init_api_embedding.py
py init_embedding.py
py conversao_faiss.py
```

Esse passo é essencial para que o RAG consiga realizar buscas vetoriais eficientes.

---

### 5️⃣ Rode o mvp

Agora, para testar o projeto execute essa linha de comando no terminal e siga as intruções do mesmo:

```bash
py mvp.py
```

## 💬 O que o sistema faz

O **IC-RAG** é um sistema de conversação inteligente com **acesso aumentado a dados**.  
Ele combina **modelos de linguagem** com **recuperação de informações** em um banco de dados relacional para oferecer respostas precisas e contextualizadas.

O fluxo principal funciona da seguinte forma:

1. 🗣️ O usuário envia uma mensagem (consulta ou pergunta).  
2. 🧩 O sistema interpreta a intenção do usuário — se é uma conversa comum, uma busca de fonte ou uma requisição direta de dado.  
3. 🔍 Quando necessário, o modelo realiza uma busca vetorial para encontrar as informações mais relevantes no banco.  
4. 📊 O dado é processado, resumido e retornado de forma clara e interpretável ao usuário.

Em resumo, o IC-RAG é capaz de:
- Conduzir uma conversa natural;
- Identificar automaticamente quando precisa consultar dados;
- Recuperar, processar e explicar informações diretamente do banco de forma compreensível.

---

## 🧾 Licença

Este projeto é distribuído sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
