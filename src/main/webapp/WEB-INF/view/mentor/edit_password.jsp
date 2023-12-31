<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/assets/css/navbar.css" rel="stylesheet">
    <jsp:include page="/WEB-INF/view/layout/nav_style.jsp"/>

</head>
<jsp:include page="/WEB-INF/view/layout/layout_nav.jsp"/>

<style>
    #boder {
        background-color: #f2f2f2; /* สีเทาอ่อน */
        border-collapse: collapse; /* รวมเส้นกรอบของเซลล์ */
        width: 40%;
        height: 200px;
        margin: 0 auto; /* จัดตารางตรงกลาง */
        padding: 20px; /* เพิ่มระยะห่างรอบตาราง 20px */
        border-radius: 50px;
        overflow: hidden;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }
</style>
<body><br>

<jsp:include page="/WEB-INF/view/check_nav.jsp"/><br><br><br><br><br>
<div class="navbar2"><br>
    <div style="margin-left: 160px; margin-top: 0px;">
        <p class="editpro_header1">ระบบแก้ไขรหัสผ่านพนักงานพี่เลี้ยง (พนักงานพี่เลี้ยง)</p>
        <p class="editpro_header2">แก้ไขรหัสผ่าน</p>
    </div>
</div><br><br>

<form:form method="POST" action="${pageContext.request.contextPath}/mentor/save_mentor_password/${mentor.mentor_id}" >
    <div id="boder" align="center">
            <div class="column">
                <label for="password" style="padding: 0px 30px 30px 0px;">แก้ไขรหัสผ่านใหม่</label>
                <input type="password" id="password" name="password" ><br>
                <label for="password" style="padding: 0px 22px 30px 0px;">ยืนยันรหัสผ่านใหม่</label>
                <input type="password" id="confirm" name="confirm" onkeyup="checkPasswordMatch()"><br>
                <label id="passwordMatch" style="margin: 20px 20px 10px 90px;">กรุณากรอกรหัสผ่านให้ตรงกัน</label>
            </div>
        </div><br>
        <div class="button-group" align="center">
            <input type="submit" class="btn btn-success" value="บันทึก" >
            <a href="${pageContext.request.contextPath}/mentor/${mentor_id}/edit_profile"><button type="button" class="btn btn-warning">ย้อนกลับ</button></a>
        </div>
    </div>
</form:form>
</body>

<script>
    const newPasswordInput = document.getElementById("password");
    const confirmPasswordInput = document.getElementById("confirm");
    const passwordMatchMessage = document.getElementById("passwordMatch");

    function checkPasswordMatch() {
        const newPassword = newPasswordInput.value;
        const confirmPassword = confirmPasswordInput.value;

        if (newPassword === confirmPassword) {
            passwordMatchMessage.textContent = "Passwords match.";
            passwordMatchMessage.style.color = "green";
        } else {
            passwordMatchMessage.textContent = "Passwords do not match.";
            passwordMatchMessage.style.color = "red";

        }
    }
</script>

</html>
