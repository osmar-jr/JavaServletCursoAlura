<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<body>
	<c:if test="${ not empty empresa }">
		Nova empresa ${empresa} adicionada com sucesso!
	</c:if>
	<c:if test="${ empty empresa }">
		Nenhuma empresa adicionada.
	</c:if>
</body>
</html>