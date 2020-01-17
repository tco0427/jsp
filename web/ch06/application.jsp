<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 12:34 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.io.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>application.jsp</title>
</head>
<body>
<center>
    <h2>application 예제</h2>
    <hr>
    1. 서버 정보: <%=application.getServerInfo()%><br>
    2. 서블릿 API 버전 정보: <%=application.getMajorVersion()+"."+application.getMinorVersion()%><br>
    3. application.jsp 파일의 실제 경로: <%=application.getRealPath("application.jsp")%><br>
    4. application.jsp 파일의 MIME Type: <%=application.getMimeType("application.jsp")%><br>
    <hr>
    setAttribute로 username 변수에 홍길동 설정
    <p>
    <%
        application.setAttribute("username","홍길동");
        application.log("username=홍길동");
        application.setAttribute("count",0);
    %>
        <a href="application_result.jsp">확인하기</a>
</p>
</center>
</body>
</html>
