# Avaliação - Testes/Serviços
Este é um projeto com estrutura Cucumber para automatizar APIs Rest usando rest-assured.

## Inicialização
Esta stack utiliza as seguintes ferramentas:
1. [Java](https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html)
2. [Cucumber](https://cucumber.io/)
3. [Eclipse](https://www.eclipse.org/)
4.  [Biblioteca Rest-Assured](https://rest-assured.io/)

### Instalação
Clone o projeto utilizando o comando

git clone git@github.com:johnataviana/brasilprev-qa-rest.git

## Configuração do Ambiente

Instale o Plugin do Cucumber pele Eclipse Marketplace

Após instalação Import o projeto pelo Eclipse File --> Import --> Maven Exisint Project

Após importar o projeto vá em Maven -> Update Project


# Executando os Testes


Após a instalação das dependências e configuração do ambiente, vamos executar os testes.

Pré requisito que o serviço esteja ativado.

1. mvn clean install

Para executar os testes;

1. Executar pelo JUnit.

Rodar a classe CadastroPessoaFeture.java classe criada a partir das Features e Cenarios usando o Cucumber.

2. Existe uma automação feita usando rest-assured para criação de cadstros em massa esta configurada o default de criação de 50 contas inicialmente.
   Caso necessário aumentar ou diminuir a iteração para gerar mas ou menos dados.



# Bibliotecas Utilizadas e configuradas no pom.xml

1. rest-assure
<!-- https://mvnrepository.com/artifact/io.rest-assured/rest-assured -->
<dependency>
     <groupId>io.rest-assured</groupId>
     <artifactId>rest-assured</artifactId>
     <version>4.0.0</version>
</dependency>

2. cucumber	

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



