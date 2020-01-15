<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/15
  Time: 11:47 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>footer.jsp</title>
</head>
<body>
footer.jsp에서 출력한 메시지입니다.
<hr>
<%=request.getParameter("email")%>
<%=request.getParameter("tel")%>
</body>
</html>
