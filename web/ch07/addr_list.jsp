<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/19
  Time: 7:45 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="ch07.*" %>
<jsp:useBean id="am" class="ch07.AddrManager" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div align="center">
    <h2>주소록</h2>
    <hr>
    <a href="addr_form.html">주소추가</a>
    <p>
        <table border="1" width="500">
        <tr>
            <td>이름</td>
            <td>전화번호</td>
            <td>이메일</td>
            <td>성별</td>
        </tr>
        <%
            for(AddrBean ab : am.getAddrList()){
        %>
        <tr>
            <td><%=ab.getUsername()%></td>
            <td><%=ab.getTel()%></td>
            <td><%=ab.getEmail()%></td>
            <td><%=ab.getSex()%></td>
        </tr>
        <%
            }
        %>
</table>
    </p>
</div>
</body>
</html>
