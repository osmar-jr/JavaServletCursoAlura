<%@page import="br.com.alura.gerenciador.model.Empresa"%>
<%@page import="java.util.List"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresas Cadastradas with Java Standard Tag Library</title>
</head>
<body>
	Lista de Empresas:
	<br>
	
	
	<ul>
		<c:forEach items="${ empresas }" var="empresa">
			<li>${ empresa.nome } | <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy" /> </li>
		</c:forEach>
	</ul>
	
</body>
</html>