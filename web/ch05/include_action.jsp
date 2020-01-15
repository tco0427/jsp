<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/15
  Time: 11:46 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>include_action.jsp</title>
</head>
<body>
    <h2>include_action.jsp에서 footer.jsp호출</h2>
<hr>
include_action.jsp에서 호출한 메시지입니다.<br>
<jsp:include page="footer.jsp">
    <jsp:param name="email" value="test@test.net"/>
    <jsp:param name="tel" value="000-000-0000"/>
</jsp:include>
</body>
</html>
