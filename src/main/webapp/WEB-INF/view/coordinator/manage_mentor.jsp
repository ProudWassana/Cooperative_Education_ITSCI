<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/assets/css/navbar.css" rel="stylesheet">
    <jsp:include page="/WEB-INF/view/layout/nav_style.jsp"/>

</head>
<jsp:include page="/WEB-INF/view/layout/layout_nav.jsp"/>
<body><br><br><br><br>

<jsp:include page="/WEB-INF/view/check_nav.jsp"/><br><br>
<div class="navbar2"><br>
    <div style="margin-left: 160px; margin-top: 0px;">
        <p class="editpro_header1">ระบบจัดการเข้าสู่ระบบพี่เลี้ยง (อาจารย์ผู้ประสานงาน)</p>
        <p class="editpro_header2">รายชื่อพนักงานพี่เลี้ยง</p>
    </div>
</div><br>

<div align="center">
    <form action="${pageContext.request.contextPath}/teacher/manage_mentor_login/" name="frm">
        <p style="display: inline-block">ภาคการศึกษา</p>
        <select id="semesterSelect" name="semesterSelect">
            <c:forEach items="${list_semester}" var="listsemester">
                <c:choose>
                    <c:when test="${listsemester.equals(term)}">
                        <option value="${listsemester}" selected>${listsemester}</option>
                    </c:when>
                    <c:otherwise>
                        <c:if test="${listsemester ne ''}">
                            <option value="${listsemester}">${listsemester}</option>
                        </c:if>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </select>
        <input type="submit" value="ค้นหา" onclick="return checkScript(frm)"/>
    </form>
    <label id="selectedLabel"></label>

</div>

<table class="table table-hover"  >
    <tr class="table-primary" id="font">
        <td align="center">ชื่อบริษัท</td>
        <td align="center">ชื่อพนักงานพี่เลี้ยง</td>
        <td align="center">ตำแหน่ง</td>
        <td align="center">จัดการเข้าสู่ระบบพี่เลี้ยง</td>
    </tr>

    <%--        ${students}--%>
    <c:set var="i" value="0" />
    <c:forEach var="list" items="${mentors}">
            <tr>
                <td align="center">${list.students.get(i).company.company_name}</td>
                <td align="center">${list.mentor_name} ${list.mentor_lastname}</td>
                <td align="center">${list.mentor_position}</td>
                <td align="center">
                <c:set var="showed" value="false" />
                <c:forEach var="nn" items="${list_pass_nn}">
                    <c:choose>
                        <c:when test="${list.mentor_id == nn.mentor_id}">
                            <button type="submit" class="btn btn-secondary" style="width: 180px;" disabled>เสร็จสิ้น</button>
                            <c:set var="showed" value="true" />
                        </c:when>
                    </c:choose>
                </c:forEach>
                    <c:if test="${!showed}" >
                        <a href="${pageContext.request.contextPath}/teacher/manage_mentor_login/${list.mentor_id}"><button type="submit" class="btn btn-primary">จัดการเข้าสู่ระบบพี่เลี้ยง</button></a>
                    </c:if>
                </td>
            </tr>
    </c:forEach>
</table>

</body>
</html>
