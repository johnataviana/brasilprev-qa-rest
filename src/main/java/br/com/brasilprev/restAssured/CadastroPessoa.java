package br.com.brasilprev.restAssured;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.containsString;

import java.io.IOException;
import java.util.Date;
import java.util.Objects;

import org.json.JSONException;
import org.junit.Test;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;

import br.com.brasilprev.dto.PessoaDto;
import br.com.brasilprev.geradoresMassa.GeradorCpf;
import br.com.brasilprev.geradoresMassa.GeradorNome;
import gherkin.deps.com.google.gson.Gson;

public class CadastroPessoa {
	
    @Test
	public void incluirPessoaSuccess() throws JsonParseException, JsonMappingException, JSONException, IOException {
		
		for (int i = 0; i < 50; i++) {
			String numero = String.valueOf(new Date().getTime());
			PessoaDto pessoa = incluirPessoa(new GeradorNome().gerarNome(), new GeradorCpf().cpf(false), "11", numero.substring(numero.length()-8, numero.length()));
			
			if (Objects.nonNull(pessoa)) {
				consultarPessoa(pessoa.telefones.get(0).ddd, pessoa.telefones.get(0).numero, 200);
			}
			
		}
	}
	
	
	@Test
	public void cadastrarPessoa() throws JsonParseException, JsonMappingException, JSONException, IOException {
		incluirPessoa("Johnata Viana", "73462384734", "11", "12635213");
	}

	
	public PessoaDto incluirPessoa(String nome, String cpf, String ddd, String telefone) throws JSONException, JsonParseException, JsonMappingException, IOException	{
		
		String body = "{\n" + 
					  "    \"codigo\": 0,\n" + 
					  "    \"nome\": \""+nome+"\",\n" +
					  "    \"cpf\":\""+cpf+"\",\n" + 
					  "    \"enderecos\": [\n" + 
					  "        {\n" + 
					  "            \"logradouro\": \"Rua Alexandre Dumas\",\n" + 
					  "            \"numero\": 123,\n" + 
					  "            \"complemento\": \"Empresa\",\n" + 
					  "            \"bairro\": \"Chacara Santo Antonio\",\n" + 
					  "            \"cidade\": \"São Paulo\",\n" + 
					  "            \"estado\": \"SP\"\n" + 
					  "        }\n" + 
					  "    ],\n" + 
					  "    \"telefones\": [\n" + 
					  "        {\n" + 
					  "            \"ddd\": \""+ddd+"\",\n" +
					  "            \"numero\": \""+telefone+"\"\n" + 
					  "        }\n" + 
					  "    ]\n" + 
					  "}";
		
		String result =  given().header("Content-Type", "application/json")
								.body(body).when().post("http://localhost:8080/pessoas").then()
								.extract().asString();
  		 System.out.println("response: " + result);
  		 return new Gson().fromJson(result, PessoaDto.class);
	}
	
	public void consultarPessoa(String ddd, String numero, Integer statusCode) throws JsonParseException, JsonMappingException, JSONException, IOException {
		String result = given().header("Content-Type", "application/json")
		                       .when()
		                       .get("http://localhost:8080/pessoas/"+ddd+"/"+numero)
							   .then()
							   .statusCode(statusCode)
							   .body(containsString(numero))
							   .extract().asString();
		System.out.println("result: "+result);
}

}
