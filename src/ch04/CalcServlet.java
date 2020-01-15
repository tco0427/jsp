package ch04;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;



public class CalcServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        int num1,num2,result;
        String op;

        PrintWriter out=response.getWriter();

        num1=Integer.parseInt(request.getParameter("num1"));
        num2=Integer.parseInt(request.getParameter("num2"));
        op=request.getParameter("operator");

        result=calc(num1,num2,op);

        out.println("<HTML>");
        out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
        out.println("<BODY><center>");
        out.println("<H2>계산결과</H2>");
        out.println("<HR>");
        out.println(num1+" "+op+" "+num2+" = "+result);
        out.println("</BODY></HTML>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    public int calc(int num1,int num2,String op){
        int result=0;

        if(op.equals("+")){
            result=num1+num2;
        }
        else if(op.equals("-")){
            result=num1-num2;
        }
        else if(op.equals("*")){
            result=num1*num2;
        }
        else if(op.equals("/")){
            result=num1/num2;
        }


        return result;
    }
}
