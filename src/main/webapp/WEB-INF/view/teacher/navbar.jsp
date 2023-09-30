<%@ page import="it_sci.model.Mentor" %>
<%@ page import="it_sci.model.Teacher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Other meta tags and stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@200;300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <%--    <link href="${pageContext.request.contextPath}/assets/css/navbar.css" rel="stylesheet">--%>


    <jsp:include page="/WEB-INF/view/layout/nav_style.jsp"/>


</head>
<style>
    .navbar.navbar-expand-lg{
        background-color: #990D28;
    }
    ul{
        font-size: 15px;
    }
    body{
        font-family: 'Prompt', sans-serif;
    }
</style>
<body>
<%
    Teacher teacher = (Teacher) session.getAttribute("teacher");
%>
<header id="header" class="fixed-top header-transparent" style="background: #990D28">
    <div class="container d-flex align-items-center justify-content-between position-relative">

<%--        <div class="logo">--%>
<%--&lt;%&ndash;            <h1 class="text-light"><a href="index.html"><span>Squadfree</span></a></h1>&ndash;%&gt;--%>
<%--            <!-- Uncomment below if you prefer to use an image logo -->--%>
<%--            <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->--%>
<%--        </div>--%>
        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="${pageContext.request.contextPath}/">หน้าแรก</a></li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/teacher/<%=teacher.getTeacher_id()%>/list_company_by_teacher">ประเมินผลการฝึกสหกิจศึกษา</a></li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/teacher/list_evaluate_by_teacher/<%=teacher.getTeacher_id()%>">ผลการประเมินการฝึกสหกิจศึกษา</a></li>
                <li><a class="nav-link scrollto" href="#team">Team</a></li>
                <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">Drop Down 1</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                                <li><a href="#">Deep Drop Down 3</a></li>
                                <li><a href="#">Deep Drop Down 4</a></li>
                                <li><a href="#">Deep Drop Down 5</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Drop Down 2</a></li>
                        <li><a href="#">Drop Down 3</a></li>
                        <li><a href="#">Drop Down 4</a></li>
                    </ul>
                <li class="nav-item">
                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/doLogout">ออกจากระบบ</a>
                </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header><!-- End Header -->

<%--<nav class="navbar navbar-expand-lg">--%>
<%--    <div class="container-fluid">--%>
<%--        <a class="navbar-brand" href="#">Navbar</a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarNav" >--%>
<%--            <ul class="navbar-nav" >--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" aria-current="page" style="color: #FFFFFF" href="${pageContext.request.contextPath}/">หน้าแรก</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/teacher/<%=teacher.getTeacher_id()%>/list_company_by_teacher">ประเมินผลการฝึกสหกิจศึกษา</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/">ผลการประเมินการฝึกสหกิจศึกษา</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/company/list_company/">กำหนดอาจารย์นิเทศ</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/teacher/list_evaluate_by_teacher">ตรวจสอบสถานะการประเมิน</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/teacher/list_evaluate_by_teacher">จัดการการเข้าสู่ระบบ</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/teacher/list_evaluate_by_teacher">สรุปคะแนนผลการประเมิน</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/"><%=teacher.getTeacher_name()%> <%=teacher.getTeacher_lastname()%></a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" style="color: #FFFFFF" href="${pageContext.request.contextPath}/doLogout">ออกจากระบบ</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
</body>
</html>
