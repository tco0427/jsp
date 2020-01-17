<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 12:49 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.io.*" %>
<html>
<head>
    <title>application_result.jsp</title>
</head>
<body>
<center>
    <h2>application 예제</h2>
    <hr>
        username에 설정된 값은: <%=application.getAttribute("username")%><p>
    <%
        Integer count=(Integer)application.getAttribute("count");
        int cnt=count.intValue()+1;
        application.setAttribute("count",cnt);
    %>
    방문자수: <%=application.getAttribute("count")%></p>
</center>
</body>
</html>
