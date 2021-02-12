Feature: Incluir Conta Corrente
				Como cliente Midway
				Eu quero ser possuir uma conta corrente
				Para utilizar seus produtos e serviços


@RegressivoIncluirConta
@IncluirContaCorrentePF
Scenario: Validar inclusao de conta corrente pessoa fisica

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessários para a inclusao da conta
Then a conta corrente pessoa fisica e criada com sucesso

@RegressivoIncluirConta
@IncluirContaCorrentePJ
Scenario: Validar inclusao de conta corrente pessoa juridica

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessários para a inclusao da conta juridica
Then a conta corrente pessoa juridica e criada com sucesso

@RegressivoIncluirConta
@IncluirContaPouapancaPF
Scenario: Validar inclusao de conta poupanca pessoa fisica

Given que estou na API Inserir Conta Poupanca
When eu preencher os dados necessários para a inclusao da conta poupanca
Then a conta poupanca pessoa fisica e criada com sucesso

@RegressivoIncluirConta
@IncluirContaSalario
Scenario: Validar inclusao de conta salario

Given que estou na API Inserir Conta Salario
When eu preencher os dados necessários para a inclusao da conta salario
Then a conta poupanca pessoa salario e criada com sucesso

@RegressivoIncluirConta
@IncluirContaComAgenciaInvalida
Scenario: Validar inclusao de conta com agencia invalida

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher a agencia invalida
Then api apresenta mensagem informando que a agencia e invalida

@RegressivoIncluirConta
@IncluirContaComAgenciaNull
Scenario: Validar inclusao de conta sem inserir a agencia

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But nao preencher a agencia
Then api apresenta mensagem informando que a agencia deve ser informada

@RegressivoIncluirConta
@IncluirContaComCestaInvalida
Scenario: Validar inclusao de conta com cesta invalida

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher a cesta invalida
Then api apresenta mensagem informando que a cesta e invalida

@RegressivoIncluirConta
@IncluirContaComCestaNull
Scenario: Validar inclusao de conta sem inserir a cesta

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But nao preencher a cesta
Then api apresenta mensagem informando que a cesta deve ser informada

@RegressivoIncluirConta
@IncluirContaComCodigoClienteInvalido
Scenario: Validar inclusao de conta com codigo do cliente invalido

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher o codigo do cliente invalido
Then api apresenta mensagem informando que o codigo do cliete e invalido

@RegressivoIncluirConta
@IncluirContaComCodigoClienteNull
Scenario: Validar inclusao de conta sem inserir o codigo do cliente

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But nao preencher o codigo do cliente
Then api apresenta mensagem informando que o codigo do cliente deve ser informado

@RegressivoIncluirConta
@IncluirContaComDiaCobrancaCesta0
Scenario: Validar inclusao de conta com dia de cobranca de cesta = 0

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher o dia da cobranca de cesta com dia igual zero
Then api apresenta mensagem informando que a data de cobranca da cesta é invalida

@RegressivoIncluirConta
@IncluirContaComDiaCobrancaCesta32
Scenario: Validar inclusao de conta com dia de cobranca de cesta = 32

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher o dia da cobranca de cesta com dia igual trinta e dois
Then api apresenta mensagem informando que a data de cobranca da cesta é invalida

@RegressivoIncluirConta
@IncluirContaComDiaCobrancaCestaNull
Scenario: Validar inclusao de conta sem inserir o dia de cobranca de cesta

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But nao preencher o dia de cobranca de cesta
Then api apresenta mensagem informando que o dia de cobranca da cesta deve ser informado

@RegressivoIncluirConta
@IncluirContaComProdutoInvalido
Scenario: Validar inclusao de conta com produto invalido

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But preencher o produto invalido
Then api apresenta mensagem informando que o produto e invalido

@RegressivoIncluirConta
@IncluirContaComProdutoNull
Scenario: Validar inclusao de conta sem inserir o produto

Given que estou na API Inserir Conta Corrente
When eu preencher os dados necessarios para a inclusao da conta
But nao preencher o produto
Then api apresenta mensagem informando que o produto deve ser informado

