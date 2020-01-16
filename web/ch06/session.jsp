<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 9:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>session.jsp</title>
</head>
<body>
<center>
<h2>session 예제</h2>
<hr>
<%
    if(session.isNew()){
        out.println("<script> alert('세션이 해제되어 다시 설정합니다.')</script>");
        session.setAttribute("login","홍길동");
    }
    else
        session.setAttribute("login","이순신");
%>
#<%=session.getAttribute("login")%>님 환영합니다.!!<br>
    1. 세션ID : <%=session.getId()%><br>
    2. 세션 유지시간: <%=session.getMaxInactiveInterval()%><br>
    3. 세션 생성 시간: <%=session.getCreationTime()%><br>
    4. 현재 세션으로 마지막 작업한 시간: <%=session.getLastAccessedTime()%>
</center>
</body>
</html>
