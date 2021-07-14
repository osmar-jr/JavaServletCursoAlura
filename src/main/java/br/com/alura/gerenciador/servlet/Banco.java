package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import br.com.alura.gerenciador.model.Empresa;

public class Banco {
	
	private static List<Empresa> empresas = new ArrayList<>();
	private static Integer chaveSequencial = 1;
	
	static {
		
		Empresa emp1 = new Empresa();
		emp1.setId(Banco.chaveSequencial++);
		emp1.setNome("Alura");
		Empresa emp2 = new Empresa();
		emp2.setId(Banco.chaveSequencial++);
		emp2.setNome("Ta Passada?");
		empresas.add(emp1);
		empresas.add(emp2);
	}

	public void adicionar(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		empresas.add(empresa);
	}

	public List<Empresa> getEmpresas() {
		return Banco.empresas;
	}

	public void removeEmpresa(Integer id) {
		Iterator<Empresa> it = empresas.iterator();

	    while(it.hasNext()) { 
	        Empresa emp = it.next();

	        if(emp.getId() == id ) {
	            it.remove();
	        }
	    }
		
	}

	public Empresa buscaEmpresaPelaId(Integer id) {
		
		for (Empresa empresa : empresas) {
			if (empresa.getId() == id) {
				return empresa;
			}
		}
		return null;
	}	

}
