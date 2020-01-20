<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/20
  Time: 3:58 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<%
    Connection conn=null;
    PreparedStatement pstmt=null;

    String jdbc_driver="oracle.jdbc.driver.OracleDriver";
    String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";

    try{
        //jdbc 드라이버 로드
        Class.forName(jdbc_driver);

        //DB연결정보를 이용해 Connection 인스턴스 확보
        conn=DriverManager.getConnection(jdbc_url,"hr","hr");

        //sql문 작성을 위한 Statement준비
        String sql="insert into hr.jdbc_test(username,email) values(?,?)";
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1,request.getParameter("username"));
        pstmt.setString(2,request.getParameter("email"));

        if(request.getParameter("username")!=null){
            pstmt.executeUpdate();
        }
    }
    catch(Exception e){
        System.out.println(e);
    }
%>
<html>
<head>
    <title>JDBC 테스트</title>
</head>
<body>
<center>
    <h2>이벤트 등록</h2>
    <hr>
    <form name="form1" method="post">
        등록이름: <input type="text" name="username">
        주소: <input type="text" name="email" size="20">
        <input type="submit" value="등록">
    </form>
    <hr>
</center>
# 등록 목록<p>
    <%
        try{
            String sql="select username, email from hr.jdbc_test";

            pstmt=conn.prepareStatement(sql);

            ResultSet rs=pstmt.executeQuery();

            int i=1;

            while(rs.next()){
                out.println(i+": "+rs.getString(1)+", "+rs.getString("email")+"<br>");
                i++;
            }

            rs.close();
            pstmt.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
    %>
</p>
</body>
</html>
