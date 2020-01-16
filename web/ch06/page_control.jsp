<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 7:59 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>page_control.jsp</title>
</head>
<body>
<h2>forward, sendRedirect 테스트</h2>
<hr>
<form method="post" action="forward_action2.jsp">
    forward action:
    <input type="text" name="username">
    <input type="submit" value="확인">
</form>

<form method="post" action="response_sendRedirect.jsp">
    response.sendRedirect:
    <input type="text" name="username">
    <input type="submit" value="확인">
</form>
</body>
</html>
