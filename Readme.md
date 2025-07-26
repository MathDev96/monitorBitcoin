# 📈 Monitor de Preço do Bitcoin (Ruby)

Projeto simples em Ruby que exibe o preço atual do Bitcoin em **dólares (USD)** e **reais (BRL)** a cada 10 segundos, consumindo a API pública da CoinGecko.  
Agora com **contador de atualizações** exibido no terminal.

---

## 🛠️ Tecnologias Usadas

- Ruby
- Bibliotecas nativas: `net/http` e `json`
- API pública da [CoinGecko](https://www.coingecko.com/)
- Ambiente: Ubuntu + VS Code

---

## ✅ Pré-requisitos

Tenha o Ruby instalado no seu sistema:

ruby -v

Se não estiver instalado, utilize:

sudo apt update
sudo apt install ruby-full

🚀 Como executar:

Clone este repositório ou crie um arquivo bitcoin.rb com o código do projeto.

No terminal, execute o script com:

ruby bitcoin.rb

A cada 10 segundos, será exibida uma saída parecida com:

- Dólar: $118.869,00
- Real: R$661.447,00
------------------------------
[2] Preço atual do Bitcoin:
- Dólar: $118.869,00
- Real: R$661.447,00
------------------------------

📌 Detalhes do funcionamento

O programa utiliza net/http para consumir a API da CoinGecko.

Os preços são extraídos do JSON retornado e apresentados em reais e dólares.

Os valores são formatados no padrão brasileiro, com . como separador de milhar e , como separador decimal.

A contagem é incrementada a cada atualização, permitindo acompanhar o número de execuções.


### 📄 Licença
Este projeto está licenciado sob a licença MIT.
