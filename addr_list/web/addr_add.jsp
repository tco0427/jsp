<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/21
  Time: 11:43 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="addr" class="addr.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>

<%
    Connection conn=null;
    PreparedStatement pstmt=null;

    String jdbc_driver="oracle.jdbc.driver.OracleDriver";
    String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";

    try{
        Class.forName(jdbc_driver);
        conn=DriverManager.getConnection(jdbc_url,"hr","hr");

        String sql="insert into hr.ADDR(username,tel,email,sex) values(?,?,?,?)";
        //statement ready
        pstmt=conn.prepareStatement(sql);

        pstmt.setString(1,request.getParameter("username"));
        pstmt.setString(2,request.getParameter("tel"));
        pstmt.setString(3,request.getParameter("email"));
        pstmt.setString(4,request.getParameter("sex"));

        if(request.getParameter("username")!=null){
            pstmt.executeUpdate();
        }
    }
    catch(Exception e){
        System.out.println(e);
    }

    pstmt.close();
    conn.close();
%>


<html>
<head>
    <title>주소록 추가</title>
</head>
<body>
<center>
    <h2>등록 내용</h2>
    이름: <jsp:getProperty property="username" name="addr"/><p>
    전화번호: <jsp:getProperty property="tel" name="addr"/><p>
    이메일: <%=addr.getEmail()%><p>
    성별: <%=addr.getSex()%>
    <hr>
    <a href="addr_list.jsp">목록보기</a>
</center>
</body>
</html>
