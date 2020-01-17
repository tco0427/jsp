<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 3:06 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<html>
<head>
    <title>checkOut.jsp</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
</head>
<body>
<center>
    <h2>계산</h2>
    선택한 상품 목록
    <hr>
    <%
        ArrayList list=(ArrayList)session.getAttribute("productlist");
        if(list==null)
            out.println("선택한 상품이 없습니다!!");
        else{
            for(Object productname: list){
                out.println(productname+"<br>");
            }
        }
    %>
</center>
</body>
</html>
