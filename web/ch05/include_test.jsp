<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/15
  Time: 7:58 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>include 지시어 테스트</title>
</head>
<body>
<center>
    <h2>include 지시어 테스트</h2>
    <hr>
    <%@ include file="menu.jsp"%>
    <p>
        <table border="0" cellpadding="5" cellspaceing="1">
    <tr>
        <td><font size="-1"><%@include file="news.jsp"%></font></td>
        <td width="30">&nbsp</td>
        <td><font size="-1"><%@include file="shopping.jsp"%></font></td>
    </tr>
</table>
    </p>
</center>
</body>
</html>
