<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/19
  Time: 8:01 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="ch07.*" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="addr" class="ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="ch07.AddrManager" scope="application"/>
<%
    am.add(addr);
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<center>
    <h2>등록내용</h2>
    이름: <jsp:getProperty property="username" name="addr"/><p>
    전화번호: <%=addr.getTel()%><p>
    이메일: <%=addr.getEmail()%><p>
    성별: <%=addr.getSex()%>
    <hr>
    <a href="addr_list.jsp">목록보기</a>
</center>
</body>
</html>
