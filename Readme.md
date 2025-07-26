# 📈 Monitor de Preço do Bitcoin (Ruby)

Projeto simples em Ruby que exibe o preço atual do Bitcoin em **dólares (USD)** e **reais (BRL)** a cada 10 segundos, consumindo a API pública da [CoinGecko](https://www.coingecko.com/).  
Agora com:

✅ **Contador de atualizações**  
✅ **Cores no terminal** usando a gem `colorize`  
✅ Compatível com **Windows e Linux**

---

## 🛠️ Tecnologias Usadas

- Ruby
- Gem: [`colorize`](https://github.com/fazibear/colorize) (estilização do terminal)
- Bibliotecas nativas: `net/http` e `json`
- API pública da CoinGecko
- Ambientes testados: Ubuntu (WSL) e Windows (CMD / PowerShell)

---

## ✅ Pré-requisitos

Tenha o Ruby instalado no seu sistema:
ruby -v (Para verificar)

🚀 Como executar

Clone este repositório ou crie um arquivo monitorBitcoin.rb com o código do projeto.

No terminal, dentro da pasta do projeto, execute:

ruby monitorBitcoin.rb

💻 Exemplo da saída no terminal:
==============================
  MONITOR DE BITCOIN - v3
==============================
💵 Dólar: $64.512,88
🇧🇷 Real:  R$348.212,33
⏰ Atualizado em: 26/07/2025 08:24:12
------------------------------

A cada 10 segundos, o terminal é limpo e os dados são atualizados automaticamente.

🔍 Detalhes do funcionamento:

Os dados são consumidos via net/http da API da CoinGecko.

O JSON retornado é parseado para extrair os valores atuais em USD e BRL.

Os valores são formatados no padrão brasileiro:

Separador de milhar: .

Separador decimal: ,

O terminal é colorido com a gem colorize.

Um contador é exibido indicando quantas atualizações já foram feitas (v1, v2, v3...).

📄 Licença
Este projeto está licenciado sob a licença MIT.

