# 📄 Geração de Embeddings com FAISS a partir de Dados do Bacen

Este script automatiza o processo de:

1. Baixar dados de agências do Banco Central do Brasil (Bacen),
2. Processá-los em lotes,
3. Gerar embeddings com o modelo [`nomic-embed-text`](https://ollama.com/library/nomic-embed-text) via [Ollama](https://ollama.com),
4. Armazená-los em um índice local FAISS para recuperação semântica eficiente.

---

## 📁 Estrutura de Pastas Esperada

```
/projeto-raiz
├── cdg/
├── dados/
│   ├── bruto/               ← onde o JSONL com os dados será salvo
│   ├── checkpoints/         ← onde será salvo o progresso de leitura
│   └── dados_faiss/         ← onde o índice vetorial FAISS será salvo
└── seu_script.py
```

---

## 🚀 Como Usar

1. **Instale as dependências**:

```bash
pip install -r requirements.txt
```

2. **Certifique-se de que o Ollama está instalado e rodando**, com os modelos `nomic-embed-text` e `llama3.2:latest` disponível:

```bash
ollama pull nomic-embed-text
ollama pull llama3.2:latest
```

3. **Execute o script**:

```bash
python seu_script.py
```

---

## ✅ Funcionalidades

- ✔️ Baixa automaticamente os dados da [API pública do Bacen](https://olinda.bcb.gov.br/).
- ✔️ Gera embeddings com `OllamaEmbeddings`.
- ✔️ Indexa os embeddings usando [FAISS](https://github.com/facebookresearch/faiss).
- ✔️ Permite **interrupção segura** com `Ctrl+C` e retoma a partir do último ponto processado.
- ✔️ Salva checkpoints automaticamente a cada lote de dados.
---

## ⚙️ Detalhes Técnicos

- **Lote padrão:** 10 documentos por batch.
- **Checkpoint:** Salvo em `dados/checkpoints/checkpoint.txt`.
- **Formato dos dados:** JSONL (`agencias.jsonl`) contendo informações de agências supervisionadas.
- **Contexto dos embeddings:** Adiciona metadado `"contexto": "Dados de agências do Bacen"`.

---

## 🧠 Exemplos de uso futuro

Após a criação do índice FAISS, você poderá carregá-lo em um sistema de **RAG (Retrieval-Augmented Generation)**, por exemplo com LangChain + Ollama, para responder perguntas com base nas informações do Bacen.

---

## 🛑 Interrupção Segura

Caso pressione `Ctrl+C` durante o processamento, o script:

- Conclui o **lote atual**,
- Salva o progresso,
- Encerra com segurança.

---

## 📌 Observação

O script foi projetado para ser executado a partir do diretório raiz do projeto, garantindo que os caminhos relativos apontem corretamente para as subpastas `dados/` e `cdg/`.

---

## 📄 Licença

Este projeto é de uso livre para fins educacionais, acadêmicos ou pessoais.