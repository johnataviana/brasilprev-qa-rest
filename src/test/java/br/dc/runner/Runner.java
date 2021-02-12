package br.dc.runner;

import org.junit.runner.*;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/main/resources/features", glue = {""},
							plugin = {
							"progress",
							"json:target/cucumberFacility.json"
							},
							tags = {"@RegressivoIncluirPessoaCliente"}, 
							monochrome = true, 
							dryRun = false, 
							strict = false)

public class Runner {

}
