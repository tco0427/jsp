<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/21
  Time: 11:23 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*"%>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">


<%
    Connection conn=null;
    PreparedStatement pstmt=null;

    String jdbc_driver="oracle.jdbc.driver.OracleDriver";
    String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";
    
    Class.forName(jdbc_driver);
    conn=DriverManager.getConnection(jdbc_url,"hr","hr");
%>
<html>
<head>
    <title>주소</title>
</head>
<body>
<center>
    <h2>주소록</h2>
    <hr>
    <a href="addr_form.html">주소추가</a><br><br>
<%
    try {
    String sql = "select username, tel, email, sex from hr.addr";
    
    pstmt = conn.prepareStatement(sql);
    
    ResultSet rs = pstmt.executeQuery();
    out.print("<table border=1 width=500>");
        out.print("<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td></tr>");
        while(rs.next()){
        out.print("<tr><td>");
            out.print(rs.getString(1)+"</td>");
            out.print("<td>"+rs.getString(2)+"</td>");
            out.print("<td>"+rs.getString(3)+"</td>");
            out.print("<td>"+rs.getString(4)+"</td>");
            out.print("</tr>");
        }
        out.print("</table>");
    
    rs.close();
    pstmt.close();
    conn.close();
    }
    catch(Exception e){
    System.out.println(e);
    }
%>
</center>
</body>
</html>
