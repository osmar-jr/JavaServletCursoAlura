<%@page import="br.com.alura.gerenciador.model.Empresa"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresas Cadastradas</title>
</head>
<body>
	Lista de Empresas:
	<br>
	<ul>
		<%
			List<Empresa> empresas = (List<Empresa>)request.getAttribute("empresas");
			for (Empresa empresa : empresas) {
		%>
			<li><%= empresa.getNome() %></li>
		<%
			}
		%>
	</ul>

</body>
</html>