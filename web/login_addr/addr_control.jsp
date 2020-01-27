<%--
  Created by IntelliJ IDEA.
  User: dongkyu
  Date: 2020/01/27
  Time: 3:01 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="login_addr.*,java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="ab" scope="application" class="login_addr.addr_dao"/>
<jsp:useBean id="addr" class="login_addr.addr"/>
<jsp:setProperty name="addr" property="*"/>
<%
    String action=request.getParameter("action");

    if(action.equals("list")){
        ArrayList<addr> datas = ab.getDBList();
        request.setAttribute("datas", datas);
        pageContext.forward("addr_list.jsp");
    }
    else if(action.equals("insert")){
        if(ab.insertDB(addr)){
            response.sendRedirect("addr_control.jsp?action=list");
        }
        else
            throw new Exception("DB 입력 오류");
    }
    else if(action.equals("edit")){
        addr add=ab.getDB(Integer.parseInt(request.getParameter("ad_id")));
        if(!request.getParameter("upasswd").equals(add.getAd_psw()))
        {
            out.println("<script>alert('비밀번호가 틀렸습니다!');history.go(-1);</script>");
        }
        else{
            request.setAttribute("ab",add);
            pageContext.forward("addr_edit.jsp");
        }
    }
    else if(action.equals("update")){
        if(ab.updateDB(addr)){
            response.sendRedirect("addr_control.jsp?action=list");
        }
        else
            throw new Exception("DB 갱신 오류");
    }
    else if(action.equals("delete")){
        if(ab.deleteDB(addr.getAd_id())){
            response.sendRedirect("addr_control.jsp?action=list");
        }
        else
            throw new Exception("DB 삭제 오류");
    }
%>