# 🌵 Projeto Raízes do Nordeste 

![Status do Projeto](https://img.shields.io/badge/Status-Finalizado-brightgreen)
![QA Focus](https://img.shields.io/badge/Foco-Qualidade%20de%20Software-orange)
![BDD](https://img.shields.io/badge/Metodologia-BDD%20Gherkin-blue)

Este repositório contém o **Planejamento de Garantia da Qualidade** e a documentação de testes para a funcionalidade de **Realizar Pedido e Checkout via Mobile** da rede de franquias Raízes do Nordeste.

---

## 📌 Sobre a Feature
A funcionalidade de Checkout Mobile é o coração financeiro da aplicação. Ela permite que o usuário selecione produtos (como tapiocas e cuscuz), escolha a unidade de franquia mais próxima, aplique cupons de desconto e finalize o pedido através de pagamentos simulados (PIX/Cartão).

---

## 🛠️ Planejamento de QA (QA Plan)

O plano foi estruturado para garantir que o software atenda aos requisitos funcionais e não funcionais, focando em:
* **Prevenção de Defeitos:** Validação precoce de regras de negócio.
* **Padronização:** Garantir que todas as franquias sigam o mesmo fluxo de venda.
* **Segurança:** Conformidade total com a LGPD e proteção de dados sensíveis.

### 👥 Papéis e Responsabilidades (Foco em QA)
* **Analista de QA (Lead):** Estratégia de testes e garantia da LGPD.
* **QA Execução:** Realização de testes manuais e registro de bugs.
* **Automação:** Criação de scripts para fluxos críticos de pagamento.
* **Stakeholders:** Validação final da experiência do usuário (UAT).

---

## 🧪 Estratégia de Testes

### 📝 Cenários BDD (Gherkin)
Os testes foram escritos utilizando a linguagem Gherkin para facilitar a comunicação entre o time técnico e os stakeholders.
```gherkin
Funcionalidade: Realizar Pedido e Checkout via Mobile

  Cenário: Finalizar pedido com sucesso via PIX (Positivo)
    Dado que o cliente possui itens adicionados ao carrinho
    Quando eu seleciono a forma de pagamento "PIX"
    E clico no botão "Finalizar Pedido"
    Então o sistema deve gerar o código Copia e Cola
    E exibir a mensagem "Pedido enviado para a cozinha com sucesso"

  Cenário: Mudança de unidade da franquia (Sincronização)
    Quando eu altero a unidade de entrega da "Unidade Centro" para "Unidade Shopping"
    Então o sistema deve recalcular o valor do frete imediatamente
    E validar se os itens ainda estão disponíveis no estoque local
```
---

## 📊 Casos de Teste de Sistema
Foram mapeados 10 cenários principais (Positivos e Negativos) contemplando:

Sucesso no pagamento simulado.

Tratamento de carrinho vazio.

Validação de dados de cartão inválidos.

Aplicação de cupons (válidos/expirados).

Resiliência em caso de queda de conexão.

Bloqueio de múltiplos cliques no botão de pagar.

---

## 📈 Métricas e Indicadores de Qualidade (KPIs)

| Indicador | Meta | Frequência |
| :--- | :--- | :--- |
| 🐞**Taxa de Defeitos** | < 2% de falhas críticas | Lançamento |
| ⚡**Tempo de Resposta** | < 2 segundos | Contínuo |
| 🟢**Disponibilidade** | 99,5% | Mensal |
|⭐**Satisfação (NPS)** | > 90% de aprovação | Semanal |

---

## 🛡️ LGPD e Privacidade
A aplicação implementa o conceito de Privacy by Design:

*Consentimento Ativo*: Banner de aceite obrigatório no primeiro checkout.

*Transparência*: Notas explicativas sobre o uso do endereço para entrega.

*Segurança*: Dados sensíveis são tratados em ambiente de sandbox (pagamento simulado).

---


## 🚀 Como visualizar os testes

Instale a extensão Cucumber (Gherkin) no VS Code.

Abra a pasta /tests/features/ para visualizar os arquivos de especificação.

Os documentos de planejamento estão em /docs/.


---

## Você pode visualizar a explicação detalhada de todo o projeto no meu Notion:

👉[[Notion](https://www.notion.so/Projeto-Qualidade-de-Software-Ra-zes-Do-Nordeste-344437a022aa805b87aeddc5f0070a4a?source=copy_link)]

Desenvolvido por Thallyssa Gama | 📧 [thallyssagama55@gmail.com] | 🔗 LinkedIn


