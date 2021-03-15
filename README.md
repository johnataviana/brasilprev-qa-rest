### Avaliação - Testes/Serviços

#### Instruções: Baixe o projeto que está localizado (https://github.com/rommelweb/Brasilprev-qa-test-master

#### A API estará disponível através do endereço: LOCALHOST:8080

#### Este é um projeto com estrutura Cucumber para automatizar APIs Rest usando rest-assured.

#### Inicialização
--------------------------------------------------------------------------------------------------------------------
#### Esta stack utiliza as seguintes ferramentas:
1. [Java](https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html)
2. [Cucumber](https://cucumber.io/)
3. [Eclipse](https://www.eclipse.org/)
4. [Biblioteca Rest-Assured](https://rest-assured.io/)

#### Instalação
Clone o projeto utilizando o comando
git clone: (https://github.com/johnataviana)

#### Configuração do Ambiente
Instale o Plugin do Cucumber pele Eclipse Marketplace
Após instalação Import o projeto pelo Eclipse File --> Import --> Maven Exisint Project
Após importar o projeto vá em Maven -> Update Project
Após a instalação das dependências e configuração do ambiente, vamos executar os testes.

#### Executando os Testes

Linguagem JAVA e o framework BDD

#### Pré requisito que o serviço esteja ativado.

1. Executar pelo JUnit.

Rodar a classe CadastroPessoaFeture.java classe criada a partir das Features e Cenários usando o Cucumber.

2. Existe uma automação feita usando rest-assured para criação de cadastros em massa esta configurada o default de criação de 50 contas inicialmente.
   Caso necessário aumentar ou diminuir a iteração para gerar mas ou menos dados.

#### Bibliotecas Utilizadas e configuradas no pom.xml

#### 1. rest-assure
<!-- https://mvnrepository.com/artifact/io.rest-assured/rest-assured -->
<dependency>
     <groupId>io.rest-assured</groupId>
     <artifactId>rest-assured</artifactId>
     <version>4.0.0</version>
</dependency>

#### 2. cucumber	

<dependency>
       		<groupId>info.cukes</groupId>
        	<artifactId>cucumber-java</artifactId>
        	<version>1.2.5</version>
   		</dependency>
   		<!-- https://mvnrepository.com/artifact/info.cukes/cucumber-junit -->
		<dependency>
		    <groupId>info.cukes</groupId>
		    <artifactId>cucumber-junit</artifactId>
		    <version>1.1.2</version>
		    <scope>test</scope>
		</dependency>
   		<dependency>
       		<groupId>info.cukes</groupId>
        	<artifactId>gherkin</artifactId>
        	<version>2.12.2</version>
   		</dependency>
         <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-core</artifactId>
            <version>4.2.2</version>
        </dependency>
		<dependency>
		    <groupId>io.cucumber</groupId>
		    <artifactId>cucumber-junit</artifactId>
		    <version>5.6.0</version>
		    <scope>test</scope>
	</dependency>
<<<<<<< HEAD


#### Agora vamos executar os testes:

#### Pré requisito que o serviço esteja ativado.

#### cucumber

info.cukes cucumber-java 1.2.5

info.cukes cucumber-junit 1.1.2 test

info.cukes gherkin 2.12.2

io.cucumber cucumber-core 4.2.2

io.cucumber cucumber-junit 5.6.0 test


#### Abra o projeto com o seu editor:

#### Abra a sub-pasta/features/IncluirPessoa.feature

#### Scenário 1: Validar cadastro de pessoa
Given que eu cadastre a Api "inserir cadastro de pessoa" 
When preencher os dados necessários "CPF, DDD e telefone"
Então terei um cadastro de pessoa criada


#### Scenário 2: Validar cadastro de pessoa com mesmo CPF "deve apresentar falha"
Given que eu cadastre Api "cadastra pessoa com mesmo  CPF"
When preencher o atributo de cadastro de pessoa com mesmo CPF
Then terei um cadastro de pessoa com falha

#### Scenário 3: Cadastra duas pessoas com CPF difente, mesmo DDD e telefone "deve apresentar falha"
Given que eu cadastre Api "cadastra duas pessoas com CPF diferente, mesmo DDD e telefone" 
When preencher o atributo de cadastro de duas pessoa com CPF diferente, mesmo DDD e telefone
Then terei um cadastro de pessoa com falha
And já existe pessoa cadastrada com o mesmo DDD e telefone

#### Scenário 4: Cadastra pessoa sem CPF, "deve apresentar falha"
Given que cadastre a Api, pessoa sem CPF
When preencher o atributo de cadastro de pessoa sem CPF
Then não deveria cadastra a pessoa
And o sistema cadastrou pessoa sem CPF
And foi reportado um BUG

#### Scenário 5: Cadastro de pessoa com CPF irregular, "deve apresentar falha"
Given que eu cadastre a Api "pessoa com CPF irregular"
When preencher o atributo de  cadastro de pessoa com CPF com "caracteres, simbolos, letras e digito a mais"
Then terei um cadastro com falha
And o sistema não detalhou erro de caracteres, simbolos, letras e digito a mais no CPF

#### Scenário 6: Cadastro de pessoa sem DDD "deve apresentar falha"
Given que cadastre a Api "pessoa sem DDD"
When preencher o atributo de cadastro de pessoa sem DDD
Then nao deveria cadastrar sem DDD
And o sistema cadastrou pessoa sem DDD
And foi reportado um bug

#### Scenário 7: Cadastro de pessoa sem DDD e telefone "deve apresentar falha"
Given que cadastre a Api pessoa sem DDD e telefone
When preencher o atributo de cadastro de pessoa sem DDD e telefone
Then não deveria cadastrar sem DDD e telefone
And o sistema cadastrou pessoasem DDD e telefone
And foi reportado um BUG

#### Scenário 8: Cadastro de pessoa sem telefone "deve apresentar falha"
Given que eu cadastre a Api pessoa sem telefone
When preencher o atributo de cadastro de pessoa sem telefone
Then Deveriater um cadastro com falha 
And o sistema cadastrou pessoa sem telefone 
And foi reportado um bug

#### Scenário 9: Realizar cadastro de pessoa com CPF alfanumerico "deve apresentar falha"
Given que eu cadastre a Api pessoa com CPF alfanumerico
When preencher o atributo de cadastro pessoa com CPF alfanumerico
Then deveria ter um cadastro com falha
And o sistema cadastrou pessoa  com CPF alfanumérico					
And foi reportado um Bug

#### AUTOMAÇÃO DE DADOS REALIZADO COM SUCESSO

### SOLICITAÇÃO DE TESTE REALIZADO COM SUCESSO!
