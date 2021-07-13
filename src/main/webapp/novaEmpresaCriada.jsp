<%
	String nomeEmpresa = (String) request.getAttribute("empresa");
	System.out.println(nomeEmpresa);
%>

<html>
<body>
Nova empresa <%= nomeEmpresa %> adicionada com sucesso!
</body>
</html>