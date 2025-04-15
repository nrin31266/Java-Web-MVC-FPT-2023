<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thông Tin Sinh Viên</title>
    <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.3.3/css/bootstrap.min.css' />">
</head>
<body>
<div class="container mt-4">
    <form action="ThongTinTotNghiep" method="get">
        <div class="mb-3">
            <label for="soCMND" class="form-label">Số CMND</label>
            <input name="soCMND" class="form-control" id="soCMND" value="${soCMND}"/>
        </div>
        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
    </form>

    <c:if test="${not empty error}">
        <div class="alert alert-danger mt-3">${error}</div>
    </c:if>

    <c:if test="${not empty sinhVien}">
        <div class="mt-4">
            <h4>Thông tin sinh viên</h4>
            <div class="mb-3"><strong>Số CMND:</strong> ${sinhVien.soCMND}</div>
            <div class="mb-3"><strong>Họ và tên:</strong> ${sinhVien.hoTen}</div>

            <h4 class="mt-4">Thông tin tốt nghiệp</h4>
            <c:if test="${not empty sinhVien.totNghieps}">
                <div class="card-deck">
                    <c:forEach items="${sinhVien.totNghieps}" var="totNghiep">
                        <div class="card mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Tốt nghiệp thông tin</h5>
                                <p class="card-text"><strong>Mã trường:</strong> ${totNghiep.maTruong}</p>
                                <p class="card-text"><strong>Mã ngành:</strong> ${totNghiep.maNganh}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
            <c:if test="${empty sinhVien.totNghieps}">
                <div class="alert alert-warning">Chưa có thông tin tốt nghiệp</div>
            </c:if>

            <h4 class="mt-4">Thông tin công việc</h4>
            <c:if test="${not empty sinhVien.congViecs}">
                <div class="card-deck">
                    <c:forEach items="${sinhVien.congViecs}" var="congViec">
                        <div class="card mb-3" style="max-width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Công việc thông tin</h5>
                                <p class="card-text"><strong>Mã ngành:</strong> ${congViec.maNganh}</p>
                                <p class="card-text"><strong>Tên công ty:</strong> ${congViec.tenCongTy}</p>
                                <p class="card-text"><strong>Thời gian làm việc:</strong> ${congViec.thoiGianLamViec}
                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
            <c:if test="${empty sinhVien.congViecs}">
                <div class="alert alert-warning">Chưa có thông tin công việc</div>
            </c:if>
        </div>
    </c:if>

<%--    <c:if test="${empty sinhVien}">--%>
<%--        <div class="alert alert-warning mt-4">Không tìm thấy sinh viên với số CMND này</div>--%>
<%--    </c:if>--%>
</div>
</body>
</html>
