<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/15
  Time: 7:06 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
</head>
<body>
    <center>
        <h2>처리중 문제가 발생했습니다.</h2>
        <hr>
        <table>
            <tr bgcolor="pink"><td>
                관리자에게 문의해주세요..<br>
                빠른시일내 복구하겠습니다.
                <hr>
                <%=exception%>
                <hr>
            </td></tr>
        </table>
    </center>
</body>
</html>
