Feature: Realizar Pedido e Checkout via Mobile
Como um cliente da rede Raízes do Nordeste
Quero finalizar meu pedido de forma rápida e segura
Para receber meu alimento na unidade correta

Contexto:
Dado que o cliente está com o aplicativo aberto
E possui itens adicionados ao carrinho

Scenario: Finalizar pedido com sucesso via PIX (Happy_Path)
Quando acesso a tela de checkout
E seleciono a forma de pagamento "PIX"
E clico no botão "Finalizar Pedido"
Então o sistema deve gerar o código Copia e Cola
E exibir a mensagem "Pedido enviado para a cozinha com sucesso"

Scenario: Tentativa de checkout com carrinho vazio (Non_Happy_Path)
Dado que eu removi todos os itens do carrinho
Quando tento acessar a tela de finalização
Então o sistema deve exibir o alerta "Seu carrinho está vazio"
E o botão "Pagar" deve permanecer desabilitado

Scenario: Aplicar cupom de desconto válido (Happy_Path)
Quando insiro o cupom "RAIZES10" no campo de desconto
E clico em "Aplicar"
Então o valor total do pedido deve ser reduzido em 10%
E o resumo deve mostrar o novo valor calculado corretamente

Scenario: Falha de conexão durante o pagamento (Non_Happy_Path/Resiliência)
Dado que estou na tela de confirmação de pagamento
Quando a conexão com a internet é interrompida
E eu tento finalizar o pedido
Então o sistema deve exibir a mensagem "Sem conexão. Seu pedido foi salvo para tentativa posterior"

Scenario: Validação de LGPD no primeiro pedido (Segurança)
Dado que este é o primeiro acesso ao checkout
Quando eu chego na etapa final
Então o sistema deve exibir o Termo de Privacidade e Uso de Dados
E impedir a conclusão do pedido até que aceite os termos

Scenario: Impedir pagamento sem selecionar método (Non_Happy_Path)
Quando deixo o campo de forma de pagamento em branco
E tento clicar em "Confirmar"
Então o sistema deve destacar o campo em vermelho
E exibir a mensagem "Por favor, escolha como deseja pagar"

Scenario: Proteção contra cliques duplos (Confiabilidade)
Quando clico rapidamente duas vezes no botão "Finalizar Pedido"
Então o sistema deve processar a transação apenas uma vez
E evitar a duplicidade de cobrança no cartão

Scenario: Verificação de campos obrigatórios no cartão (Non_Happy_Path)
Quando preencho os dados do cartão mas esqueço o código CVC
E clico em "Pagar"
Então o sistema deve avisar "Código de segurança obrigatório"

Scenario: Velocidade de carregamento do checkout (Performance)
Quando clico para abrir a tela de checkout
Então a página deve carregar todos os dados e valores em menos de 2 segundos