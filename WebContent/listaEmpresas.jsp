<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, sevlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="/mostraEmpresa" var = "LinkServletMostraEmpresa"></c:url>
<c:url value="/removeEmpresa" var = "LinkServletRemoveEmpresa"></c:url>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>
<c:if test="${not empty empresa }">
Empresa ${ empresa } cadastrada com sucesso!
</c:if>
<c:if test="${empty empresa }">
Nenhuma empresa cadastrada !
</c:if>
   Lista de Empresas:  <hr />
   
   <ul>
       <c:forEach items="${empresas}" var="empresa">
         <li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy" />
         <a href="${LinkServletMostraEmpresa}?id=${empresa.id }">editar</a>
         <a href="${LinkServletRemoveEmpresa}?id=${empresa.id }">excluir</a>
         </li>
       </c:forEach>
   
   </ul>
   
</body>
</html>