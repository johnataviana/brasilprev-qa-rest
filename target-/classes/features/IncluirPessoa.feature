Feature: Realizar cadastro de pessoa
			Eu como QA gostaria de criar um cadastro de pessoa 
			Para armazenar seus dados e numero de telefone

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Validar cadastro de pessoa 
Given que eu cadastre a Api "inserir cadastro de pessoa" 
When preencher os dados necessarios "CPF, DDD e telefone"
Then terei um cadastro de pessoa criado 

@RegressivoCadastroPessoa
@CadastrarPessoa 
Scenario: Validar cadastro de pessoa com mesmo CPF "deve apresentar falha"
Given que eu cadastre Api "cadastra pessoa com mesmo  CPF"
When preencher o atributo de cadastro de pessoa com mesmo CPF
Then terei um cadastro de pessoa com falha

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Cadastra duas pessoas com CPF difente, mesmo DDD e telefone "deve apresentar falha"
Given que eu cadastre Api "cadastra duas pessoas com CPF diferente, mesmo DDD e telefone" 
When preencher o atributo de cadastro de duas pessoa com CPF diferente, mesmo DDD e telefone
Then terei um cadastro de pessoa com falha
And já existe pessoa cadastrada com o mesmo DDD e telefone

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Cadastra pessoa sem CPF, "deve apresentar falha"
Given que cadastre a Api, pessoa sem CPF
When preencher o atributo de cadastro de pessoa sem CPF
Then não deveria cadastra a pessoa
And o sistema cadastrou pessoa sem CPF
And foi reportado um BUG

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Cadastro de pessoa com CPF irregular, "deve apresentar falha"
Given que eu cadastre a Api "pessoa com CPF irregular"
When preencher o atributo de  cadastro de pessoa com CPF com "caracteres, simbolos, letras e digito a mais"
Then terei um cadastro com falha
And o sistema não detalhou erro de caracteres, simbolos, letras e digito a mais no CPF

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Cadastro de pessoa sem DDD "deve apresentar falha"
Given que cadastre a Api "pessoa sem DDD"
When preencher o atributo de cadastro de pessoa sem DDD
Then nao deveria cadastrar sem DDD
And o sistema cadastrou pessoa sem DDD
And foi reportado um bug

@RegressivoCadastroPessoa
@CadastrarPessoa
 Scenario: Cadastro de pessoa sem DDD e telefone "deve apresentar falha"
Given que cadastre a Api pessoa sem DDD e telefone
When preencher o atributo de cadastro de pessoa sem DDD e telefone
Then não deveria cadastrar sem DDD e telefone
And o sistema cadastrou pessoasem DDD e telefone
And foi reportado um BUG

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Cadastro de pessoa sem telefone "deve apresentar falha"
Given que eu cadastre a Api pessoa sem telefone
When preencher o atributo de cadastro de pessoa sem telefone
Then Deveriater um cadastro com falha 
And o sistema cadastrou pessoa sem telefone 
And foi reportadoum bug

@RegressivoCadastroPessoa
@CadastrarPessoa
Scenario: Realizar cadastro de pessoa com CPF alfanumerico "deve apresentar falha"
Given que eu cadastre a Api pessoa com CPF alfanumerico
When preencher o atributo de cadastro pessoa com CPF alfanumerico
Then deveria ter um cadastro com falha
And o sistema cadastrou pessoa  com CPF alfanumérico					
And foi reportado um Bug			