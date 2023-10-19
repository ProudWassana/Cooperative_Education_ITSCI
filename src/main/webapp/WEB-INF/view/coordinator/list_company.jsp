<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/assets/css/navbar.css" rel="stylesheet">
    <jsp:include page="/WEB-INF/view/layout/nav_style.jsp"/>

</head>
<jsp:include page="/WEB-INF/view/layout/layout_nav.jsp"/>
<body><br><br>

<jsp:include page="/WEB-INF/view/check_nav.jsp"/><br><br>
<div class="navbar2"><br>
    <div style="margin-left: 160px; margin-top: 0px;">
        <p class="editpro_header1">ระบบการกำหนดอาจารย์นิเทศการฝึกสหกิจศึกษา (อาจารย์ผู้ประสานงาน)</p>
        <p class="editpro_header2">รายชื่อบริษัท</p>
    </div>
</div>
    <table class="table table-hover" >
        <tr class="table-primary" id="font" >
            <td align="center">รหัสบริษัท</td>
            <td>ชื่อบริษัท</td>
            <td align="center">เบอร์โทรศัพท์</td>
            <td align="center">ข้อมูลบริษัท</td>
            <td align="center">กำหนดอาจารย์นิเทศ</td>
        </tr>
<%--        ${students}--%>
        <c:forEach var="company" items="${companies}">
        <tr>
            <td align="center"> ${company.company_id}</td>
            <td> ${company.company_name}</td>
            <td align="center">${company.phone_number}</td>
            <td align="center"><a href="${pageContext.request.contextPath}/company/${company.company_id}/view_company_detail">
                <i class="bi bi-postcard" style="font-size: 28px;"></i>
            </a>
            <td align="center">
            <a href="${pageContext.request.contextPath}/teacher/${company.company_id}/assign_teacher"><button type="button" class="btn btn-primary">มอบหมายอาจารย์</button></a>
        </td>
<%--            <td align="center">--%>
<%--                <a href="${pageContext.request.contextPath}/teacher/${company.company_id}/assign_teacher">--%>
<%--                    <button type="button" class="btn btn-primary" id="assignButton">มอบหมายอาจารย์</button>--%>
<%--                </a>--%>
<%--                <button type="button" class="btn btn-secondary" id="editButton" style="display: none;">แก้ไข</button>--%>
<%--            </td>--%>

        </tr>
        </c:forEach>
    </table>


</body><br><br><br><br>

<%--<script>--%>
<%--    // หาปุ่ม "มอบหมายอาจารย์" และปุ่ม "แก้ไข" โดยใช้ ID--%>
<%--    const assignButton = document.getElementById("assignButton");--%>
<%--    const editButton = document.getElementById("editButton");--%>

<%--    // เพิ่มการทักท้วงเหตุการณ์คลิกปุ่ม "มอบหมายอาจารย์"--%>
<%--    assignButton.addEventListener("click", function () {--%>
<%--        // ดำเนินการที่คุณต้องการเมื่อคลิกปุ่ม "มอบหมายอาจารย์" อย่างเช่น--%>
<%--        // ปิดปุ่ม "มอบหมายอาจารย์" และแสดงปุ่ม "แก้ไข"--%>
<%--        assignButton.disabled = true;--%>
<%--        editButton.style.display = "block";--%>
<%--    });--%>

<%--    // เพิ่มการทักท้วงเหตุการณ์คลิกปุ่ม "แก้ไข"--%>
<%--    editButton.addEventListener("click", function () {--%>
<%--        // ดำเนินการที่คุณต้องการเมื่อคลิกปุ่ม "แก้ไข"--%>
<%--        // ในกรณีนี้คือการทำอะไรต่อหลังจากคลิกปุ่ม "แก้ไข"--%>
<%--    });--%>

<%--</script>--%>


</html>
<jsp:include page="/WEB-INF/view/layout/footer.jsp"/>
