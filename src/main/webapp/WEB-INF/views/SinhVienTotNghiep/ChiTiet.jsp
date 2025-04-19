<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách tốt nghiệp</title>
</head>
<body>

<table border="1" cellpadding="5" cellspacing="0">
    <thead>
    <tr>
        <th>STT</th>
        <th>Mã trường</th>
        <th>Mã ngành</th>
        <th>Ngày tốt nghiệp</th>
        <th>Xếp loại</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="tn" items="${sinhVien.totNghieps}" varStatus="status">
        <tr>
            <td>${status.index + 1}</td>
            <td>${tn.maTruong}</td>
            <td>${tn.maNganh}</td>
            <td>${tn.ngayTN}</td>
            <td>${tn.loaiTN}</td>
            <td>
<%--                <form action="${pageContext.request.contextPath}/XoaTotNghiep/${sinhVien.soCMND}/${tn.maTruong}/${tn.maNganh}"--%>
                <form action="XoaTotNghiep/${sinhVien.soCMND}/${tn.maTruong}/${tn.maNganh}"
                      method="post" style="display:inline;">
                    <input type="submit" value="Xóa" onclick="return confirm('Bạn có chắc muốn xóa?');"/>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
