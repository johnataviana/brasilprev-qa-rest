Feature: Incluir Clientes
				Como pessoa Midway
				Eu quero ser um cliente Midway
				Para adquirir seus produtos e serviços


Scenario: Validar inclusao de cliente emancipado

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para pessoa emancipada
Then o cliente é criado com sucesso

Scenario: Validar inclusao de cliente emancipado com data de nascimento nao compativel

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para pessoa emancipada
But preencher data ao compativel com a idade possivel de cientes emancipados
Then o sistema apresenta mensagem para inserir data valida

Scenario: Validar inclusao de cliente nao emancipado menor que dezoito anos

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para cliente menor que dezoito anos
But preencher amancipado igual a nao
Then o sistema apresenta mensagem que cliente nao pode ter menos que dezoito anos

Scenario: Validar inclusao de cliente emancipado menor que dezesseis anos

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para cliente menor que dezesseis anos
But preencher amancipado igual a sim
Then o sistema apresenta mensagem que cliente emancipado nao pode ter menos que dezesseis anos

Scenario: Validar inclusao de cliente com dado de emancipacao invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o campo emancipado com valor invalido
Then o sistema apresenta mensagem para inserir dados de emancipacao validos

Scenario: Validar inclusao de cliente sem preencher campo emancipado

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o campo emancipado
Then o sistema apresenta mensagem para inserir se cliente e emancipado ou nao


