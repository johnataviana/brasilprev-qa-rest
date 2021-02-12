package br.com.brasilprev.geradoresMassa;

import io.restassured.RestAssured;
import io.restassured.http.Method;
import io.restassured.response.Response;

public class GeradorNome {
	
		public static String join(String[] partes, String separador) {
			StringBuilder sb = new StringBuilder();
			if (partes.length >= 1) {
				sb.append(partes[0]);
				for (int i = 1; i < partes.length; ++i) {
					sb.append(separador);
					sb.append(partes[i]);
				}
			}
			return sb.toString().replaceAll("\"", "");
		}
		
		public String gerarNome() {
			 Response response = RestAssured.request(Method.GET, "http://gerador-nomes.herokuapp.com/nome/aleatorio");
			 String Teste[]=(response.getBody().asString()).split(",");
			 String Teste2 = join(Teste, " ");			
			 return (Teste2.substring(1, Teste2.toString().length()-1));	 
		}
	 		 

}
