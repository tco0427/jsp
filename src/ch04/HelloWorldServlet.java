package ch04;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class HelloWorldServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>Hello World Servlet</TITLE></HEAD>");
        out.println("<BODY><H2>Hello World Servlet : 헬로월드</H2></BODY>");
        out.println("</HTML>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
