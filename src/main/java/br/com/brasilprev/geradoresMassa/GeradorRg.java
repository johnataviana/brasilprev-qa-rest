package br.com.brasilprev.geradoresMassa;

import java.util.Random;

public class GeradorRg {

	@SuppressWarnings("unused")
	private int randomiza(int n) {
        int ranNum = (int) (Math.random() * n);
		return ranNum;
	}

	@SuppressWarnings("unused")
	private int mod(int dividendo, int divisor) {
		return (int) Math.round(dividendo - (Math.floor(dividendo / divisor) * divisor));
	}
	
	public String rg(boolean comPontos) {
		String numerosContatenados;
		String numeroGerado;
		Random numeroAleatorio = new Random();
		//numeros gerados
		int n1 = numeroAleatorio.nextInt(10);
		int n2 = numeroAleatorio.nextInt(10);
		int n3 = numeroAleatorio.nextInt(10);
		int n4 = numeroAleatorio.nextInt(10);
		int n5 = numeroAleatorio.nextInt(10);
		int n6 = numeroAleatorio.nextInt(10);
		int n7 = numeroAleatorio.nextInt(10);
		int n8 = numeroAleatorio.nextInt(10);
		int n9 = numeroAleatorio.nextInt(10);

		//Conctenando os numeros
		numerosContatenados = String.valueOf(n1) + String.valueOf(n2) + String.valueOf(n3)  + String.valueOf(n4) +
				String.valueOf(n5) + String.valueOf(n6) + String.valueOf(n7) +String.valueOf(n8)  +
				String.valueOf(n9);
		numeroGerado = numerosContatenados;

        if (comPontos)
            numeroGerado = "" + n1 + n2 + "." + n3 + n4 + n5 + "." + n6 + n7 + n8 + "-" + n9;
        else
            numeroGerado = "" + n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9;

		return numeroGerado;
	}


	public static void main(String[] args) {
		GeradorRg gerador = new GeradorRg();
		String rg = gerador.rg(true);
		
		if (rg.contains(".")) {
			rg = rg.replace(".", "");
		}
		if (rg.contains("-")) {
			rg = rg.replace("-", "");
		}
		if (rg.contains("/")) {
			rg = rg.replace("/", "");
		}
		
		System.out.println(rg);
	}	
	
	public String getRg() {
		GeradorRg gerador = new GeradorRg();
		String rg = gerador.rg(true);
		
		if (rg.contains(".")) {
			rg = rg.replace(".", "");
		}
		if (rg.contains("-")) {
			rg = rg.replace("-", "");
		}
		if (rg.contains("/")) {
			rg = rg.replace("/", "");
		}
		
		return rg;
	}	
	
}
	