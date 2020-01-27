<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/27
  Time: 2:40 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="addr_error.jsp" %>
<html>
<head>
    <title>주소록:작성화면</title>
    <link rel="stylesheet" href="addr.css" type="text/css" media="screen"/>
</head>
<body>
<div align="center">
    <h2>주소록 작성화면</h2>
    <hr>
    [<a href="addr_list.jsp">주소록 목록으로</a>]
    <p>
        <form name="form1" method="post" action="addr_control.jsp">
        <input type=hidden name="action" value="insert">
            <table border="1">
                <tr>
                    <th>이 름</th>
                    <td><input type="text" name="ad_name" maxlength="15"></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="ad_psw" maxlength="10"></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="email" name="ad_email" maxlength="50"></td>
                </tr>
                <tr>
                    <th>생 일</th>
                    <td><input type="date" name="ad_birth"></td>
                </tr>
                <tr>
                    <th>메 모</th>
                    <td><input type="text" name="ad_memo"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="저장">
                        <input type="reset" value="취소">
                    </td>
                </tr>
            </table>
        </form>
    </p>
</div>
</body>
</html>
