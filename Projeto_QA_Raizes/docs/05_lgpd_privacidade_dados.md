## 🔹LGPD e Privacidade de Dados

### Implementação na Interface (UI/UX)

Para que a privacidade seja explícita, o sistema conta com os seguintes elementos:

- **Banner de Consentimento Ativo:** No primeiro pedido, antes de chegar à tela de pagamento, o app exibe um *pop-up* claro explicando que os dados de geolocalização e identificação serão usados apenas para a entrega e segurança da transação.
- **Checkbox de Aceite:** O botão "Finalizar Pedido" só é habilitado se o usuário marcar que leu e concorda com a Política de Privacidade.
- **Campos Mascarados:** Durante a digitação, os dados sensíveis (como o número do cartão simulado) são ocultados visualmente, exibindo apenas os últimos 4 dígitos para conferência.


### Cenário de Teste de Privacidade (Exemplo Gherkin)

```gherkin
Cenário: Validar transparência de dados no primeiro checkout (LGPD)
Dado que eu sou um novo cliente e estou na tela de pagamento
Quando eu tento finalizar o pedido sem marcar o aceite de privacidade
Então o sistema deve exibir o aviso: "Precisamos da sua autorização para processar a entrega"
E o processamento dos dados deve permanecer bloqueado até o consentimento
```