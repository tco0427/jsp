<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 2:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>selProduct.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    session.setAttribute("username",request.getParameter("username"));
%>
<center>
    <h2>상품 선택</h2>
    <hr>
    <%=session.getAttribute("username")%>님이 로그인한 상태입니다.
    <hr>
    <form name="form1" method="POST" action="add.jsp">
        <select name="product">
            <option>사과</option>
            <option>귤</option>
            <option>파인애플</option>
            <option>자몽</option>
            <option>레몬</option>
        </select>
        <input type="submit" value="추가"/>
    </form>
    <a href="checkOut.jsp">계산</a>
</center>
</body>
</html>
