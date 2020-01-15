package ch04;

public class Calc {
    private int result=0;
    public Calc(int a,int b,String s){
        if(s.equals("+"))
            result=a+b;
        else if(s.equals("-"))
            result=a-b;
        else if(s.equals("*"))
            result=a*b;
        else if(s.equals("/"))
            result=a/b;
    }

    public int getResult(){
        return result;
    }
}
