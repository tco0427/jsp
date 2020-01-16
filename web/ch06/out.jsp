<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 8:28 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<center>
    <h2>out 참조 변수의 사용</h2>
    <hr>
    1. 설정된 버퍼 크키: <%=out.getBufferSize()%>
    <br>
    2. 남아 있는 버퍼 크기: <%=out.getRemaining()%>
    <br>
    <%out.flush();%>
    3. flush 후 남아 있는 버퍼 크기: <%=out.getRemaining()%>
    <br>
    <%out.clearBuffer();%>
    4. clear 후 남아 있는 버퍼 크기: <%=out.getRemaining()%>
    <br>
    <%out.close();%>
    5. close 후 남아 있는 버퍼 크기: <%=out.getRemaining()%>
</center>
</body>
</html>
