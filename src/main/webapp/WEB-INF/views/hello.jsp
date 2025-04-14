<%--
  Created by IntelliJ IDEA.
  User: abc09
  Date: 4/12/2025
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Spring MVC</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tailwind.min.css"> -->
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">

</head>
<body>
<h1 class="title">${title} </h1> <br>
<button class="btn-primary btn"
        onclick="window.location.href='${pageContext.request.contextPath}/SinhVienTotNghiep/add'">
    Add User
</button>
</body>
</html>
