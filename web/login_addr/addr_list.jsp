<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/27
  Time: 2:32 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" errorPage="addr_error.jsp" import="java.util.*,login_addr.*"%>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"/>
<html>
<head>
    <script language="JavaScript">
        function check(ad_id){
            psw=prompt('수정/삭제하려면 비밀번호를 넣으세요');
            document.location.href="addr_control.jsp?action=edit&ad_id="+ad_id+"&upasswd="+psw;
        }
    </script>
    <link rel="stylesheet" href="addr.css" type="text/css" media="screen"/>
    <title>주소록:목록화면</title>
</head>
<body>
<div align="center">
    <h2>주소록 목록화면</h2>
    <hr>
    <from>
        <a href="addr_form.jsp">주소록 등록</a>
        <p>
            <table border="1">
            <tr bgcolor="#99CCFF">
                <th>번 호</th>
                <th>이 름</th>
                <th>이메일</th>
                <th>생 일</th>
                <th>메 모</th>
            </tr>
        <%
            for(addr ad:(ArrayList<addr>) datas){
        %>
        <tr>
            <td><a href="javascript:check(<%=ad.getAd_id()%>)"><%=ad.getAd_id()%></a></td>
            <td><%=ad.getAd_name()%></td>
            <td><%=ad.getAd_email()%></td>
            <td><%=ad.getAd_birth()%></td>
            <td><%=ad.getAd_memo()%></td>
        </tr>
        <%
            }
        %>
            </table>
        </p>
    </from>
</div>
</body>
</html>
