<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 12:03 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>forward_action.jsp</title>
</head>
<body>
<h2>forward_action.jsp에서 foot.jsp 호출</h2>
<hr>
forward_action.jsp에서 호출한 메시지입니다.<br>
<jsp:forward page="footer.jsp">
    <jsp:param name="email" value="test@test.net"/>
    <jsp:param name="tel" value="000-000-0000"/>
</jsp:forward>
</body>
</html>
