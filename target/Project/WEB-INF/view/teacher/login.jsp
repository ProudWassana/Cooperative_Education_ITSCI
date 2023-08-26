<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 21/8/2566
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
</head>
<body>

<%--<section class="vh-100" style="background-color: #508bfc;">--%>
<%--    <div class="container py-5 h-100">--%>
<%--        <div class="row d-flex justify-content-center align-items-center h-100">--%>
<%--            <div class="col-12 col-md-8 col-lg-6 col-xl-5">--%>
<%--                <div class="card shadow-2-strong" style="border-radius: 1rem;">--%>
<%--                    <div class="card-body p-5 text-center">--%>

<%--                        <form:form action="${pageContext.request.contextPath}/doLoginTeacher" method="POST">--%>
<%--                        <h3 class="mb-5">Login</h3>--%>

<%--                        <div class="form-outline mb-4">--%>
<%--                            <input type="email" name="email" id="typeEmailX-2" class="form-control form-control-lg" />--%>
<%--                            <label class="form-label" for="typeEmailX-2">Email</label>--%>
<%--                        </div>--%>

<%--                        <div class="form-outline mb-4">--%>
<%--                            <input type="password" name="password" id="typePasswordX-2" class="form-control form-control-lg" />--%>
<%--                            <label class="form-label" for="typePasswordX-2">Password</label>--%>
<%--                        </div>--%>
<%--                        <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>--%>

<%--                        </form:form>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<section class="h-100 gradient-form" style="background-color: #eee;">

    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="card rounded-3 text-black">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <div class="card-body p-md-5 mx-md-4">

                                <form:form action="${pageContext.request.contextPath}/doLoginTeacher" method="POST">
                                    <p>Please login to your account</p>

                                    <div class="form-outline mb-4">
                                        <input type="email" name="email" id="form2Example11" class="form-control"
                                               placeholder="email" />
                                        <label class="form-label" for="form2Example11">Username</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" name="password" id="form2Example22" class="form-control" />
                                        <label class="form-label" for="form2Example22">Password</label>
                                    </div>

                                    <div class="text-center pt-1 mb-5 pb-1">
                                        <input type="submit">
                                        <a class="text-muted" >Forgot password?</a>
                                    </div>

                                </form:form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
