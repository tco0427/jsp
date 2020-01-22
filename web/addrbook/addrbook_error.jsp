<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/21
  Time: 5:28 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" pageEncoding="UTF-8" %>
<html>
<head>
    <title>주소록 에러</title>
</head>
<body>
<div align="center">
    <h2>주소록 에러</h2>
    <hr>
    <table cellpadding="5" width="400">
        <tr width="100%" bgcolor="pink">
            <td>주소록 처리중 에러가 발생했습니다.<br>
            관리자에세 문희해주세요..<br>
            빠른 시일내 복구하겠습니다.
            <hr>
            에러내용: <%=exception%>
            <hr>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
