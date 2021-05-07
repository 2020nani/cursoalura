<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/alteraEmpresa" var = "LinkServletAlteraEmpresa"></c:url>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <form action="${LinkServletAlteraEmpresa}" method="post">

        Nome: <input value="${empresa.nome }" type="text" name="nome" />
        Data Abertura: <input value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" />" type="text" name="data" />
        <input value="${empresa.id }" type="hidden" name="id" />
        <input type="submit" />
    </form>

</body>
</html>