Feature: Cancelamento de transações agendadas pelo cliente
				Como cliente Midway
				Eu quero cancelar transações agendadas
				Para que o sistema cancele a transação agendada

@Regressao
Scenario Outline: Validar cancelamento pelo cliente de transações agendadas

Given que estou na API Cancelar Agendamento
And que possuo transacao agendada <transacaoAgendada>
And que possuo saldo <saldo>
And que possuo limite <limite>
And que possuo <LimiteDiario>
And que estou <dia>
When eu preencher o numero de agendamento <numeroAgendamento>
Then o sistema apresentara o <Resultado>

Examples:

| transacaoAgendada |    saldo    |    limite    |    LimiteDiario   |        dia        |   numeroAgendamento   | Resultado                                                             |
|     INTERNA       |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |    2 DIAS ANTES   |           OK          | Agendamento Cancelado com Sucesso                                     |
|       TED         |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |    2 DIAS ANTES   |           OK          | Agendamento Cancelado com Sucesso                                     |
|     INTERNA       |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |     1 DIA ANTES   |           OK          | Agendamento Cancelado com Sucesso                                     |
|       TED         |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |     1 DIA ANTES   |           OK          | Agendamento Cancelado com Sucesso                                     |
|     INTERNA       |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |       NO DIA      |           OK          | Cancelamento deve ser solicitado com no mínimo 1 dia de antecedencia  |
|       TED         |   POSITIVO  |   POSITIVO   |   POSSUI LIMITE   |       NO DIA      |           OK          | Cancelamento deve ser solicitado com no mínimo 1 dia de antecedencia  |
|     INTERNA       |   NEGATIVO  |   NEGATIVO   |   POSSUI LIMITE   |       NO DIA      |           OK          | Agendamento é cancelado automaticamente							     |
|       TED         |   NEGATIVO  |   NEGATIVO   |   POSSUI LIMITE   |       NO DIA      |           OK          | Agendamento é cancelado automaticamente							     |
|     INTERNA       |   POSITIVO  |   POSITIVO   | NÃO POSSUI LIMITE |       NO DIA      |           OK          | Agendamento é cancelado automaticamente							     |
|       TED         |   POSITIVO  |   POSITIVO   | NÃO POSSUI LIMITE |       NO DIA      |           OK          | Agendamento é cancelado automaticamente							     |