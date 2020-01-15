<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/16
  Time: 12:28 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%!
    int num1,num2=0;
    int result=0;
    String op="";

    public int calculator() {
        if (op.equals("+"))
            result = num1 + num2;
        else if (op.equals("-"))
            result = num1 + num2;
        else if (op.equals("*"))
            result = num1 * num2;
        else if (op.equals("/"))
            result = num1 / num2;

        return result;
    }
%>
<%
    if(request.getMethod().equals("POST")){
        num1=Integer.parseInt(request.getParameter("num1"));
        num2=Integer.parseInt(request.getParameter("num2"));
        op=request.getParameter("operator");
    }
%>

<html>
<head>
    <title>계산기</title>
</head>
<body>
<center>
    <h3>계산기</h3>
    <hr>
    <form name="form1" method="post">
        <input type="text" name="num1" width="200" size="5">
        <select name="operator">
            <option selected>+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
        </select>
        <input type="text" name="num2" width="200" size="5">
        <input type="submit" value="계산" name="B1">
        <input type="reset" value="다시 입력" name="B2">
    </form>
    <hr>계산결과: <%=calculator()%>
</center>
</body>
</html>
