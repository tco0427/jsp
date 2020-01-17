<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 2:57 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.ArrayList" %>
<html>
<head>
    <title>add.jsp</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String productname=request.getParameter("product");
    ArrayList list=(ArrayList)session.getAttribute("productlist");
    if(list==null){
        list=new ArrayList();
        session.setAttribute("productlist",list);
    }
    list.add(productname);
%>
<script>
    alert("<%=productname%>가 추가되었습니다!!");
    history.go(-1);
</script>
</body>
</html>
