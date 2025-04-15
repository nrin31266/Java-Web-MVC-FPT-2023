<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring MVC</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
</head>
<body>

<!-- Table with buttons -->
<div class="container mt-4">
    <h1 class="text-center">${title}</h1> <br>

    <!-- Table -->
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Tên Chức Năng</th>
            <th scope="col">Hành Động</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Add User</td>
            <td><button class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath}/SinhVienTotNghiep/add'">Thêm Sinh Viên</button></td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Form Tim Kiem 1</td>
            <td><button class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/TimKiem/TimKiemCoBan'">Đi tới Form 1</button></td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td>Form Tim Kiem 2</td>
            <td><button class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/TimKiem/ThongTinTotNghiep'">Đi tới Form 2</button></td>
        </tr>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="<c:url value='/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js' />"></script>

</body>
</html>
