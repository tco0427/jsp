<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 12:48 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>scriptlet1.jsp</title>
</head>
<body>
<div align="center">
    <h2>스크립트릿 1-10출력</h2>
    <hr>
    <%
        for(int i=0;i<10;i++)
            out.println(i+"<br>");
    %>
</div>
</body>
</html>
