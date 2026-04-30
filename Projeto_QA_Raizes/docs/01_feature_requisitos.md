### **Requisitos Funcionais** (O que o sistema faz)

**Seleção de Itens:** O sistema deve permitir escolher produtos, opcionais (ex: recheio extra) e quantidades.

**Identificação da Franquia:** O sistema deve identificar automaticamente a franquia mais próxima ou permitir a escolha manual pelo usuário.

**Pagamento Simulado:** O checkout deve aceitar simulações de cartão de crédito e PIX para validar o fluxo de venda.

**Histórico de Pedidos:** O cliente deve conseguir visualizar o status do seu pedido atual (Recebido, Em Preparo, Saiu para Entrega).



### **Requisitos Não Funcionais** (Como o sistema se comporta)

**Desempenho Móvel:** A página de pagamento não pode demorar mais de 2 segundos para processar a transação.

**Segurança (LGPD):** O sistema deve anonimizar os dados sensíveis do cliente após a conclusão da entrega.

**Usabilidade:** Os botões de ação principal (como "Confirmar Pedido") devem ter cores de alto contraste para facilitar a leitura.

**Escalabilidade:** O sistema de checkout deve suportar um aumento de 300% no volume de pedidos em datas comemorativas (como Dia das Mães ou São João).




### **Feature: Realizar Pedido e Checkout via mobile**
8 Requisitos Mensuráveis:

**Tempo de Resposta:** O carrinho de compras deve atualizar em, no máximo, 1,5 segundo após adicionar um item. 

**Usabilidade (Cliques):** O cliente deve conseguir finalizar um pedido (da escolha ao pagamento) com no máximo 5 cliques.

**Disponibilidade:** O módulo de pedidos deve estar disponível para o cliente em 99,5% do tempo.
Segurança de Dados: Os dados de pagamento (cartão ou PIX) devem ser criptografados, e nenhum número de cartão pode ficar visível após a digitação.

**Responsividade:** Todos os botões de "Finalizar Pedido" devem ocupar pelo menos 44x44 pixels para facilitar o toque em telas pequenas.

**Confiabilidade de Cálculo:** O sistema não pode apresentar erro superior a R$ 0,01 no cálculo de descontos e taxas de entrega entre diferentes franquias.

**LGPD (Transparência):** Antes de fechar o primeiro pedido, o sistema deve exibir claramente um aviso de uso de dados para fins de entrega, com opção de aceite.

**Recuperação de Falhas:** Se a internet cair durante o pagamento, o sistema deve manter os itens no carrinho por até 30 minutos para o usuário retomar de onde parou.





### **Critérios de Aceitação**

- O fluxo de pedido não apresentar travamentos (crashes) em dispositivos Android e iOS.
- O valor total do carrinho bater exatamente com a soma dos itens + frete - descontos.
- O usuário receber uma confirmação visual clara de que seu pedido foi enviado à cozinha.