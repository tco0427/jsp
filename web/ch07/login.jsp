<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/19
  Time: 7:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="login" class="ch07.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>
<html>
<head>
    <title></title>
</head>
<body>
<center>
    <h2>로그인 예제</h2>
    <hr>
    <%
        if(login.checkUser()){
            out.println("성공!");
        }
        else{
            out.println("로그인 실패!");
        }
    %>
    <hr>
    사용자 아이디: <jsp:getProperty name="login" property="userid"/><br>
    사용자 패스워드: <jsp:getProperty name="login" property="passwd"/>
</center>
</body>
</html>
