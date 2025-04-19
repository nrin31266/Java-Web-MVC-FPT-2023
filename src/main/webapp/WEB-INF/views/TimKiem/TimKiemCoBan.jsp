<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Quản lý Sinh Viên</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-shadow {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
        }
        .table thead th {
            background-color: #0d6efd;
            color: white;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }
        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }
    </style>
</head>
<body>

<div class="container py-5">
    <div>
        <button onclick="window.location.href='${pageContext.request.contextPath}/'"
        class="btn btn-link">Thoat</button>
    </div>
    <div class="row">
        <!-- Form tìm kiếm -->
        <div class="col-md-4">
            <div class="card card-shadow p-4 bg-white">
                <h5 class="mb-4 text-primary text-center">🔍 Tìm kiếm sinh viên</h5>
                <form action="TimKiemCoBan" method="get">
                    <div class="mb-3">
                        <label for="soCMND" class="form-label">Số CMND</label>
                        <input type="text" class="form-control" id="soCMND" name="soCMND" value="${soCMND}">
                    </div>
                    <div class="mb-3">
                        <label for="hoTen" class="form-label">Họ tên</label>
                        <input type="text" class="form-control" id="hoTen" name="hoTen" value="${hoTen}">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" value="${email}">
                    </div>
                    <div class="mb-3">
                        <label for="soDT" class="form-label">Số ĐT</label>
                        <input type="text" class="form-control" id="soDT" name="soDT" value="${soDT}">
                    </div>
                    <div class="mb-3">
                        <label for="diaChi" class="form-label">Địa chỉ</label>
                        <input type="text" class="form-control" id="diaChi" name="diaChi" value="${diaChi}">
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Bảng danh sách sinh viên -->
        <div class="col-md-8">
            <div class="card card-shadow p-4">
                <h5 class="mb-4 text-success text-center">📋 Danh sách sinh viên</h5>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover align-middle">
                        <thead>
                        <tr>
                            <th scope="col">Số CMND</th>
                            <th scope="col">Họ Tên</th>
                            <th scope="col">Email</th>
                            <th scope="col">Số ĐT</th>
                            <th scope="col">Địa Chỉ</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sinhViens}" var="sv">
                            <tr>
                                <td>${sv.soCMND}</td>
                                <td>${sv.hoTen}</td>
                                <td>${sv.email}</td>
                                <td>${sv.soDT}</td>
                                <td>${sv.diaChi}</td>
                                <td >
                                    <button
                                            class="btn btn-link"
                                            onclick="window.location.href='${pageContext.request.contextPath}/SinhVienTotNghiep/${sv.soCMND}'">
                                        Chi Tiet
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
