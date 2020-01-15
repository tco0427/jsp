<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 12:49 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>scriptlet2.jsp</title>
</head>
<body>
<div align="center">
    <h2>스크립트릿 1-10까지 출력</h2>
    <hr>
    <%
        for(int i=0;i<10;i++){
    %>
    <%=i%><br>
    <%
        }
    %>
</div>
</body>
</html>
