### **Plano de Qualidade**

**Velocidade:** O checkout não pode ser lento, especialmente em conexões 4G/5G. 

**Segurança:** Blindagem total dos dados de pagamento e conformidade com a LGPD.

**Precisão:** O valor cobrado deve ser exatamente a soma dos produtos, taxas e descontos, sem erros.


### **Plano de Testes fluxo movél:**

**Testes de Usabilidade:** Garantir que os botões são fáceis de clicar.

**Testes de Integração:** Ver se o app conversa direito com o sistema de pagamentos (Cartão/PIX).

**Testes de Regressão:** Sempre que mudar algo no cardápio, testamos se o checkout continua funcionando.

**Testes de Carga:** Simular muitos pedidos saindo ao mesmo tempo para ver se o sistema não trava.




### **Papéis e Responsabilidades**

> **Analista de QA :** Cria os cenários de teste, executa as validações e trava o lançamento se encontrar erros graves.

> **Testador (QA Execução):** Executa os testes nos celulares, registra os erros encontrados e verifica se os cálculos de frete e descontos estão batendo centavo por centavo.

> **Analista de Automação:** Foca em criar scripts que testam o fluxo de checkout automaticamente. O objetivo é garantir que, ao adicionar uma nova função, as antigas continuem funcionando.

> **Stakeholders (Validação Final):** Atuam na homologação. Não testam o código, mas validam se a experiência final no checkout está dentro do padrão de qualidade esperado pela marca **Raízes do Nordeste**.





Cronograma de Validação
- **Rotina Semanal:** Toda segunda e quarta-feira realiza execução dos casos de teste manuais nas novas telas.
- **Checklist de Homologação:** Antes de qualquer atualização do sistema de pedidos ir ao ar, a equipe de QA precisa dar o "OK" nos seguintes itens:
    1. O pagamento simulado foi aprovado sem erros?
    2. O tempo de carregamento do checkout está abaixo de 2 segundos?
    3. Os termos de privacidade (LGPD) aparecem para novos usuários?
    4. O layout está alinhado em modelos diferentes de celular?