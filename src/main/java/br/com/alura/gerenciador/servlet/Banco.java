package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

import br.com.alura.gerenciador.model.Empresa;

public class Banco {
	
	private static List<Empresa> empresas = new ArrayList<>();
	
	static {
		
		Empresa emp1 = new Empresa();
		emp1.setNome("Alura");
		Empresa emp2 = new Empresa();
		emp2.setNome("Ta Passada?");
		empresas.add(emp1);
		empresas.add(emp2);
	}

	public void adicionar(Empresa empresa) {
		empresas.add(empresa);
		
	}

	public List<Empresa> getEmpresas() {
		return Banco.empresas;
	}
	
	

}
