<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 8:07 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
지금 보이는 화면은 page_control_end.jsp에서 출력한 결과입니다.
<hr>
이름: <%=request.getParameter("username")%>
<br>
전화번호: <%=request.getParameter("tel")%>
</body>
</html>
