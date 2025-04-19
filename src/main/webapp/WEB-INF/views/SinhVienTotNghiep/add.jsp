<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Thông tin tốt nghiệp</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Nhập thông tin sinh viên tốt nghiệp</h4>
                </div>

                <div class="card-body">

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <form:form method="post" action="add" modelAttribute="requestBody">

                        <div class="mb-3">
                            <label class="form-label">Số CMND *</label>
                            <form:input path="soCMND" cssClass="form-control"/>
                            <form:errors path="soCMND" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Họ tên</label>
                            <form:input path="hoTen" cssClass="form-control"/>
                            <form:errors path="hoTen" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <form:input path="email" cssClass="form-control"/>
                            <form:errors path="email" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Số điện thoại</label>
                            <form:input path="soDT" cssClass="form-control"/>
                            <form:errors path="soDT" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Địa chỉ</label>
                            <form:input path="diaChi" cssClass="form-control"/>
                            <form:errors path="diaChi" cssClass="text-danger"/>
                        </div>

                        <hr>
                        <h5>Thông tin tốt nghiệp</h5>

                        <div class="mb-3">
                            <label class="form-label">Trường *</label>
                            <form:select path="maTruong" cssClass="form-select">
                                <form:options items="${truongs}" itemValue="maTruong" itemLabel="tenTruong"/>
                            </form:select>
                            <form:errors path="maTruong" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Ngành *</label>
                            <form:select path="maNganh" cssClass="form-select">
                                <form:options items="${nganhs}" itemValue="maNganh" itemLabel="tenNganh"/>
                            </form:select>
                            <form:errors path="maNganh" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Hệ TN</label>
                            <form:input path="heTN" cssClass="form-control"/>
                            <form:errors path="heTN" cssClass="text-danger"/>
                        </div>

<%--                        <div class="mb-3">--%>
<%--                            <label class="form-label">Ngày TN</label>--%>
<%--                            <form:input path="ngayTN" type="date" cssClass="form-control"/>--%>
<%--                            <form:errors path="ngayTN" cssClass="text-danger"/>--%>
<%--                        </div>--%>

                        <div class="mb-3">
                            <label class="form-label">Ngày TN</label>
                            <form:input path="ngayTN" type="datetime-local" cssClass="form-control"/>
                            <form:errors path="ngayTN" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Loại TN</label>
                            <form:input path="loaiTN" cssClass="form-control"/>
                            <form:errors path="loaiTN" cssClass="text-danger"/>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Lưu thông tin</button>
                        </div>
                    </form:form>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
