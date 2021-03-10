package br.com.brasilprev.pessoa;

import br.com.brasilprev.restAssured.CadastroPessoa;
import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class IncluirPessoa extends CadastroPessoa{
	
	@Given("^que estou na API Inserir Cadastro de Pessoa$")
	public void que_estou_na_API_Inserir_Cadastro_de_Pessoa() throws Throwable {
	    throw new PendingException();
	}

	@When("^eu preencher os dados necessario$")
	public void eu_preencher_os_dados_necessarios() throws Throwable {
	    throw new PendingException();
	}

	@Then("^o cadastro de pessoa criado com sucesso$")
	public void o_cadastro_de_pessoa_criado_com_sucesso() throws Throwable {
		cadastrarPessoa();
		throw new PendingException();
	}
	
	@Given("^que eu cadastre Api \"([^\"]*)\"$")
	public void que_eu_cadastre_Api(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^preencher o atributo de cadastro de pessoa com mesmo  CPF$")
	public void preencher_o_atributo_de_cadastro_de_pessoa_com_mesmo_CPF() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("^terei um cadastro de pessoa com falha$")
	public void terei_um_cadastro_de_pessoa_com_falha() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^preencher o atributo de cadastro de pessoa com CPF diferente, mesmo DDD e telefone$")
	public void preencher_o_atributo_de_cadastro_de_pessoa_com_CPF_diferente_mesmo_DDD_e_telefone() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Given("^que cadastre a Api, pessoa sem CPF$")
	public void que_cadastre_a_Api_pessoa_sem_CPF() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@When("^preencher o atributo de cadastro de pessoa sem CPF$")
	public void preencher_o_atributo_de_cadastro_de_pessoa_sem_CPF() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("^n?o deveria cadastra a pessoa$")
	public void n_o_deveria_cadastra_a_pessoa() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Then("^o sistema cadastrou pessoa sem CPF e foi reportado um BUG$")
	public void o_sistema_cadastrou_pessoa_sem_CPF_e_foi_reportado_um_BUG() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}



}
