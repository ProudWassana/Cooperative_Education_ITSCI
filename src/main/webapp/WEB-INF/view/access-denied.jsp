<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPEhtml><html><head><title>${title}</title><link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet"></head>
<body><h1>Access Denied</h1>
<hr><div class="container">
    <h2 style="text-align: center;">คุณไม่ได้รับอนุญาตให้เข้าถึงหน้าเว็บนี้</h2>
    <div style="text-align:center"><a href="${pageContext.request.contextPath}/">กลับไปหน้าแรก</a></div>
</div>
<jsp:include page="/WEB-INF/view/layout/footer.jsp"/>
</body></html>