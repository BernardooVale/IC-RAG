# 🧠 IC-RAG

Este projeto propõe um chatbot de recuperação de informação semântica integrado ao Catálogo de APIs de Dados Abertos, permitindo que usuários encontrem endpoints governamentais relevantes por meio de linguagem natural. A solução utiliza o modelo EmbeddingGemma 300M para gerar vetores semânticos de metadados e a biblioteca FAISS para busca eficiente por similaridade. Ao classificar intenções do usuário com o modelo gemma4, o sistema oferece uma alternativa otimizada e de baixo custo aos pipelines RAG tradicionais, demonstrando alta acurácia (Recall@N) na vinculação de consultas técnicas com fontes de dados públicas em ambientes de recursos computacionais limitados.

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
ollama pull gemma4:e2b
ollama pull embeddinggemma:latest
ollama pull gemma4:e4b
```

---

### 3️⃣ Prepare o banco de dados

O sistema depende de um banco de dados **SQLServer** já populado. Desse modo, garanta que você tenha instalado o SQLServer com Driver 17 na sua máquina.
Para criar e popular o banco você tem duas opções, via .sql ou .bak:

Via terminal entre no diretório do projeto `IC-RAG` e depois em `prod`, depois execute na linha de comando

```
py init_banco_via_SQL.py
```

---

### 4️⃣ Gere os embeddings iniciais

Antes de iniciar o sistema, rode o script responsável por criar os embeddings e armazená-los no banco:

```bash
py init_api_embeddings.py
py init_embeddings.py
py conversao_faiss.py
```

Esse passo é essencial para que o RAG consiga realizar buscas vetoriais eficientes.

---

### 5️⃣ Rode o mvp

Agora, para testar o projeto execute essa linha de comando no terminal e siga as intruções do mesmo:

```bash
py mvp.py
```

Tenha em mente que o chatbot irá buscar endpoints compatíveis com o contexto da sua mensagem, desse modo, a sua pergunta deve ter o contexto de **"Onde posso achar dado X"** para funcionar corretamente.

---

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
