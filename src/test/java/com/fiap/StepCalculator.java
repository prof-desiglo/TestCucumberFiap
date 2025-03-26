package com.fiap;

import io.cucumber.java.pt.*;

import static org.junit.jupiter.api.Assertions.*;

public class StepCalculator {

    private Calc calc;
    private int resultado;

    @Dado("que eu tenho uma calculadora")
    public void createCalculator() {
         this.calc = new Calc();
    }

    @Quando("eu fizer uma soma com os valores {int} e {int}")
    public void soma(int a, int b) {
        try {
            resultado = calc.soma(a, b);
        } catch (Exception e) {
            fail(); //Em caso de exceção falha o teste
        }
    }

    // {} são os Cucumber Expressions
    @Entao("o resultado vai ser {int}")
    public void verificaSoma(int resultadoCorreto) {
        assertEquals(resultadoCorreto, resultado);
    }

    // Exemplo com Regex
    @Entao("^vai .* (.)*$")
    public void vSoma(int resultadoCorreto) {
        assertEquals(resultadoCorreto, resultado);
    }
}
