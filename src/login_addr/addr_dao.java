package login_addr;

import java.sql.*;
import java.util.*;

public class addr_dao {
    Connection conn=null;
    PreparedStatement pstmt=null;

    String jdbc_driver="oracle.jdbc.driver.OracleDriver";
    String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";

    //데이터베이스 연동
    void connect(){
        try{
            Class.forName(jdbc_driver);
            conn=DriverManager.getConnection(jdbc_url,"hr","hr");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    //Connection 해제
    void disconnect(){
        if(pstmt!=null){
            try{
                pstmt.close();
            }
            catch(SQLException e){
                e.printStackTrace();
            }
        }
        if(conn!=null){
            try {
                conn.close();
            }
            catch(SQLException e){
                e.printStackTrace();
            }
        }
    }

    //insert
    public boolean insertDB(addr addr){
        connect();

        String sql="INSERT INTO hr.loginaddr(ad_id,ad_name,ad_psw,ad_email,ad_birth,ad_memo) VALUES(seq_id.nextval,?,?,?,?,?)";

        try{
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,addr.getAd_name());
            pstmt.setString(2,addr.getAd_psw());
            pstmt.setString(3,addr.getAd_email());
            pstmt.setString(4,addr.getAd_birth());
            pstmt.setString(5,addr.getAd_memo());

            pstmt.executeUpdate();
        }
        catch(SQLException e){
            e.printStackTrace();
            return false;
        }
        finally{
            disconnect();
        }
        return true;
    }

    //update
    public boolean updateDB(addr addr){
        connect();

        String sql="update hr.loginaddr set ad_name=?, ad_psw=?, ad_email=?, ad_birth=?, ad_memo=? where ad_id=?";

        try{
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,addr.getAd_name());
            pstmt.setString(2,addr.getAd_psw());
            pstmt.setString(3,addr.getAd_email());
            pstmt.setString(4,addr.getAd_birth());
            pstmt.setString(5,addr.getAd_memo());
            pstmt.setInt(6,addr.getAd_id());

            pstmt.executeUpdate();

        }
        catch(SQLException e){
            e.printStackTrace();
            return false;
        }
        finally{
            disconnect();
        }
        return true;
    }

    //delete
    public boolean deleteDB(int gb_id){
        connect();

        String sql="delete from hr.loginaddr where ad_id=?";

        try{
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,gb_id);
            pstmt.executeUpdate();
        }
        catch(SQLException e){
            e.printStackTrace();
            return false;
        }
        finally {
            disconnect();
        }
        return true;
    }

    //get
    public addr getDB(int gb_id){
        connect();

        String sql="select * from hr.loginaddr where ad_id=?";

        addr addr=new addr();

        try{
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,gb_id);
            ResultSet rs=pstmt.executeQuery();

            rs.next();
            addr.setAd_id(rs.getInt("ad_id"));
            addr.setAd_name(rs.getString("ad_name"));
            addr.setAd_psw(rs.getString("ad_psw"));
            addr.setAd_email(rs.getString("ad_email"));
            addr.setAd_birth(rs.getString("ad_birth"));
            addr.setAd_memo(rs.getString("ad_memo"));
            rs.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        finally {
            disconnect();
        }
        return addr;
    }

    //getlist
    public ArrayList<addr> getDBList(){
        connect();
        ArrayList<addr> datas=new ArrayList<>();

        String sql="select * from hr.loginaddr order by ad_id desc";

        try{
            pstmt=conn.prepareStatement(sql);
            ResultSet rs=pstmt.executeQuery();

            while(rs.next()){
                addr addr=new addr();

                addr.setAd_id(rs.getInt("ad_id"));
                addr.setAd_name(rs.getString("ad_name"));
                addr.setAd_psw(rs.getString("ad_psw"));
                addr.setAd_email(rs.getString("ad_email"));
                addr.setAd_birth(rs.getString("ad_birth"));
                addr.setAd_memo(rs.getString("ad_memo"));
                datas.add(addr);
            }
            rs.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        finally {
            disconnect();
        }
        return datas;
    }
}
