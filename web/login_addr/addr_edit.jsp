<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/27
  Time: 2:47 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="addr_error.jsp" import="login_addr.*"%>
<jsp:useBean id="ab" scope="request" class="login_addr.addr"/>
<html>
<head>
    <title>주소록:수정화면</title>
    <link rel="stylesheet" href="addr.css" type="text/css" media="screen"/>
    <script language="JavaScript">
        function delcheck() {
            result = confirm("정말로 삭제하시겟습니까?");
            if (result==true) {
                document.form1.action.value = "delete";
                document.form1.submit();
            }
            else
                return;
        }
    </script>
</head>
<body>
<div align="center">
    <h2>주소록 수정화면</h2>
    <hr>
    [<a href=addr_control.jsp?action=list>주소록 목록으로</a>]
    <p>
    <form name="form1" method="post" action="addr_control.jsp">
    <input type=hidden name="ad_id" value="<%=ab.getAd_id()%>">
    <input type=hidden name="action" value="update">
        <table border="1">
            <tr>
                <th>이 름</th>
                <td><input type="text" name="ad_name" value="<%=ab.getAd_name()%>" maxlength="15"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="ad_psw" value="<%=ab.getAd_psw()%>" maxlength="10"></td>
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" name="ad_email" value="<%=ab.getAd_email()%>" maxlength="50"></td>
            </tr>
            <tr>
                <th>생 일</th>
                <td><input type="date" name="ad_birth" value="<%=ab.getAd_birth()%>"></td>
            </tr>
            <tr>
                <th>메 모</th>
                <td><input type="text" name="ad_memo" value="<%=ab.getAd_memo()%>"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="저장">
                    <input type="reset" value="취소">
                    <input type="button" value="삭제" onClick="delcheck()">
                </td>
            </tr>
        </table>
    </form>
    </p>
</div>
</body>
</html>
