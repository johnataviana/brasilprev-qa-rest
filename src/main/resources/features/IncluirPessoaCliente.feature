Feature: Incluir Clientes
			Como pessoa Midway
			Eu quero ser um cliente Midway
			Para adquirir seus produtos e serviços

@RegressivoIncluirPessoaCliente
@IncluirCliente
Scenario: Validar inclusao de cliente com sucesso

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteCpfInvalido
Scenario: Validar inclusao de cliente com cpf invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher cpf invalido
Then o cliente o sistema apresenta mensagem para inserir cpf valido

@RegressivoIncluirPessoaCliente
@IncluirClienteCpfNull
Scenario: Validar inclusao de cliente sem preencher o cpf

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher cpf
Then o cliente o sistema apresenta mensagem para inserir o Cpf

@RegressivoIncluirPessoaCliente
@IncluirClienteTipoDocInvalido
Scenario: Validar inclusao de cliente com tipo de documento principal invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o tipo de documento principal invalido
Then o cliente o sistema apresenta mensagem para inserir tipo de documento principal valido

@RegressivoIncluirPessoaCliente
@IncluirClienteGeneroInvalido
Scenario: Validar inclusao de cliente preencheendo o genero do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o genero do cliente invalido
Then o sistema apresenta mensagem para inserir o genero do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteGeneroNull
Scenario: Validar inclusao de cliente sem preencher o genero do cliente

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o genero do cliente
Then o sistema apresenta mensagem para inserir o genero do cliente

@RegressivoIncluirPessoaCliente
@IncluirClienteNaturalidadeInvalida
Scenario: Validar inclusao de cliente preencheendo a naturalidade do cliente invalida

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher a naturalidade do cliente invalida
Then o sistema apresenta mensagem para inserir a naturalidade do cliente valida

@RegressivoIncluirPessoaCliente
@IncluirClienteNaturalidadeNull
Scenario: Validar inclusao de cliente sem preencher a naturalidade do cliente

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher a naturalidade do cliente
Then o sistema apresenta mensagem para inserir a naturalidade do cliente

@RegressivoIncluirPessoaCliente
@IncluirClienteCodPaisInvalido
Scenario: Validar inclusao de cliente preencheendo codigo do pais do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o codigo do pais do cliente invalido
Then o sistema apresenta mensagem para inserir o codigo do pais do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteCodPaisNull
Scenario: Validar inclusao de cliente sem preencher o codigodo pais do cliente

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o codigo do pais do cliente
Then o sistema apresenta mensagem para inserir o codigo do pais do cliente

@RegressivoIncluirPessoaCliente
@IncluirClienteTipoDocNull
Scenario: Validar inclusao de cliente sem preencher o tipo de documento principal

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o tipo de documento principal
Then o cliente o sistema apresenta mensagem para inserir tipo de documento principal

@RegressivoIncluirPessoaCliente
@IncluirClienteRgInvalido
Scenario: Validar inclusao de cliente com rg invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher rg invalido
Then o cliente o sistema apresenta mensagem para inserir rg valido

@RegressivoIncluirPessoaCliente
@IncluirClienteRgNull
Scenario: Validar inclusao de cliente sem preencher o rg

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher rg
Then o cliente o sistema apresenta mensagem para inserir o rg

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeInvalido
Scenario: Validar inclusao de cliente preencheendo nome do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o nome do cliente invalido
Then o sistema apresenta mensagem para inserir o nome do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeNull
Scenario: Validar inclusao de cliente sem inserir o nome do cliente

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o nome do cliente
Then o cliente o sistema apresenta mensagem para inserir o nome do cliente

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeConjugeInvalido
Scenario: Validar inclusao de cliente preencheendo nome do conjuge do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o nome do conjuge do cliente invalido
Then o sistema apresenta mensagem para inserir o nome do conjuge do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeConjugeNull
Scenario: Validar inclusao de cliente sem inserir o nome do conjuge

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o nome do conjuge
Then o cliente o sistema apresenta mensagem para inserir o nome do conjuge

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeMaeInvalido
Scenario: Validar inclusao de cliente preencheendo nome da mae do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o nome da mae do cliente invalido
Then o sistema apresenta mensagem para inserir o nome da mae do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteNomeMaeNull
Scenario: Validar inclusao de cliente sem inserir o nome da mae

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o nome da mae
Then o cliente o sistema apresenta mensagem para inserir o nome da mae

@RegressivoIncluirPessoaCliente
@IncluirClienteEstadoCivilInvalido
Scenario: Validar inclusao de cliente preencheendo estado civil do cliente invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o estado civil do cliente invalido
Then o sistema apresenta mensagem para inserir um estado civil do cliente valido

@RegressivoIncluirPessoaCliente
@IncluirClienteEstadoCivilSolteiro
Scenario: Validar inclusao de cliente solteiro sem preencher o nome do conjuge

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários com estado civil solteiro
And nao preencher o nome do conjuge do cliente
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteEstadoCivilNull
Scenario: Validar inclusao de cliente sem inserir o estado civil

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o estadocivil
Then o cliente o sistema apresenta mensagem para inserir o estado civil

@RegressivoIncluirPessoaCliente
@IncluirClienteNacionalidadeInvalida
Scenario: Validar inclusao de cliente preencheendo nacionalidade do cliente invalida

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher a nacionalidade do cliente invalida
Then o sistema apresenta mensagem para inserir uma nacionalidade do cliente valida

@RegressivoIncluirPessoaCliente
@IncluirClienteNacionalidadeNull
Scenario: Validar inclusao de cliente sem preencher a nacionalidade do cliente

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher a nacionalidade do cliente
Then o sistema apresenta mensagem para inserir a nacionalidade do cliente

@RegressivoIncluirPessoaCliente
@IncluirClienteEstrangeiro
Scenario: Validar inclusao de cliente com nacionalidade estrangeira

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários com nacionalidade estrangeira
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteComFatca
Scenario: Validar inclusao de cliente com declaracao fatca

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários com declaracao fatca
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteComFatcaInvalida
Scenario: Validar inclusao de cliente preencheendo declaracao fatca do cliente invalida

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher a declaracao fatca do cliente invalida
Then o sistema apresenta mensagem para inserir uma declaracao fatca do cliente valida

@RegressivoIncluirPessoaCliente
@IncluirClienteSemInserirFatca
Scenario: Validar inclusao de cliente sem preencher dados de declaracao fatca

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o campo declaracao fatca
Then o sistema apresenta mensagem para inserir se cliente possui declaracao fatca

@RegressivoIncluirPessoaCliente
@IncluirClienteSemPpe
Scenario: Validar inclusao de cliente sem declaracao ppe

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários sem declaracao ppe
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteComPpeInvalido
Scenario: Validar inclusao de cliente preencheendo declaracao ppe do cliente invalida

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher a declaracao ppe do cliente invalida
Then o sistema apresenta mensagem para inserir uma declaracao ppe do cliente valida

@RegressivoIncluirPessoaCliente
@IncluirClienteSemInserirPpe
Scenario: Validar inclusao de cliente sem preencher dados de declaracao ppe

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o campo declaracao ppe
Then o sistema apresenta mensagem para inserir se cliente possui declaracao ppe

@RegressivoIncluirPessoaCliente
@IncluirClienteComDeficiencia
Scenario: Validar inclusao de cliente com deficiencia

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para pessoa com deficiencia
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteComDadosDeficienciaInvalidos
Scenario: Validar inclusao de cliente preencheendo declaracao dados de deficiencia invalidos

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher a dados de deficiencia do cliente invalidos
Then o sistema apresenta mensagem para inserir dados de deficiencia validos

@RegressivoIncluirPessoaCliente
@IncluirClienteComDadosDeficienciaNull
Scenario: Validar inclusao de cliente sem preencher dados de deficiencia

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o campo pessoa com deficiencia
Then o sistema apresenta mensagem para inserir se cliente possui deficiencia

@RegressivoIncluirPessoaCliente
@IncluirClienteEmancipado
Scenario: Validar inclusao de cliente emancipado

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para pessoa emancipada
Then o cliente é criado com sucesso

@RegressivoIncluirPessoaCliente
@IncluirClienteEmancipadoMaior18anos
Scenario: Validar inclusao de cliente emancipado com data de nascimento nao compativel

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para pessoa emancipada
But preencher data ao compativel com a idade possivel de cientes emancipados
Then o sistema apresenta mensagem para inserir data valida

@RegressivoIncluirPessoaCliente
@IncluirClienteNaoEmancipadoMenor18anos
Scenario: Validar inclusao de cliente nao emancipado menor que dezoito anos

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para cliente menor que dezoito anos
But preencher amancipado igual a nao
Then o sistema apresenta mensagem que cliente nao pode ter menos que dezoito anos

@RegressivoIncluirPessoaCliente
@IncluirClienteEmancipadoMenor16anos
Scenario: Validar inclusao de cliente emancipado menor que dezesseis anos

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessarios para cliente menor que dezesseis anos
But preencher amancipado igual a sim
Then o sistema apresenta mensagem que cliente emancipado nao pode ter menos que dezesseis anos

@RegressivoIncluirPessoaCliente
@IncluirClienteEmancipadoDadosInvalidos
Scenario: Validar inclusao de cliente com dado de emancipacao invalido

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But preencher o campo emancipado com valor invalido
Then o sistema apresenta mensagem para inserir dados de emancipacao validos

@RegressivoIncluirPessoaCliente
@IncluirClienteEmancipadoNull
Scenario: Validar inclusao de cliente sem preencher campo emancipado

Given que estou na API Inserir Pessoa Cliente
When eu preencher os dados necessários
But nao preencher o campo emancipado
Then o sistema apresenta mensagem para inserir se cliente e emancipado ou nao
