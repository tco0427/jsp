<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/17
  Time: 3:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.util.*"%>
<html>
<head>
    <title>Twitter</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username=request.getParameter("username");

    if(username!=null)
        session.setAttribute("user",username);
%>
<div align="center">
    <h3>My Simple Twitter!!</h3>
    <hr>
    <form action="tweet.jsp" method="POST">
        @<%=session.getAttribute("user")%>
        <input type="text" name="msg"/>
        <input type="submit" value="Tweet"/>
    </form>
    <hr>
    <div align="left">
        <ul>
        <%
            ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");
            if(msgs!=null){
                for(String msg:msgs){
                    out.println("<li>"+msg+"<li>");
                }
            }
        %>
        </ul>
    </div>
</div>
</body>
</html>
