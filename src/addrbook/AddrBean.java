package addrbook;

import java.sql.*;
import java.util.*;

/**
 * File : AddrBean.java
 * Desc : 주소록 프로그램 DAO 클래스
 * @author 황희정(dinfree@dinfree.com)
 */
public class AddrBean {

    Connection conn = null;
    PreparedStatement pstmt = null;
    Statement stmt=null;


	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
    String jdbc_url="jdbc:oracle:thin:@localhost:1521:xe";

    // DB연결 메서드
    void connect() {
        try {
            Class.forName(jdbc_driver);

            conn = DriverManager.getConnection(jdbc_url,"hr","hr");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void disconnect() {
        if(pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // 수정된 주소록 내용 갱신을 위한 메서드
    public boolean updateDB(AddrBook addrbook) {
        connect();

        String sql ="update hr.addrbook set ab_name=?, ab_email=?, ab_birth=?, ab_tel=?, ab_comdept=?, ab_memo=? where ab_id=?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,addrbook.getAb_name());
            pstmt.setString(2,addrbook.getAb_email());
            pstmt.setString(3, addrbook.getAb_birth());
            pstmt.setString(4,addrbook.getAb_tel());
            pstmt.setString(5,addrbook.getAb_comdept());
            pstmt.setString(6,addrbook.getAb_memo());
            pstmt.setInt(7,addrbook.getAb_id());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        finally {
            disconnect();
        }
        return true;
    }

    // 특정 주소록 게시글 삭제 메서드
    public boolean deleteDB(int gb_id) {
        connect();

        String sql ="delete from hr.addrbook where ab_id=?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,gb_id);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        finally {
            disconnect();
        }
        return true;
    }

    // 신규 주소록 메시지 추가 메서드
    public boolean insertDB(AddrBook addrbook) {
        connect();

        String sql ="insert into hr.addrbook values(seq_id.nextval,?,?,?,?,?,?)";
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,addrbook.getAb_name());
            pstmt.setString(2,addrbook.getAb_email());
            pstmt.setString(3,addrbook.getAb_birth());
            pstmt.setString(4,addrbook.getAb_tel());
            pstmt.setString(5,addrbook.getAb_comdept());
            pstmt.setString(6,addrbook.getAb_memo());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        finally {
            disconnect();
        }
        return true;
    }

    // 특정 주소록 게시글 가져오는 메서드
    public AddrBook getDB(int gb_id) {
        connect();

        String sql = "select * from hr.addrbook where ab_id=?";
        AddrBook addrbook = new AddrBook();

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,gb_id);
            ResultSet rs = pstmt.executeQuery();

            // 데이터가 하나만 있으므로 rs.next()를 한번만 실행 한다.
            rs.next();
            addrbook.setAb_id(rs.getInt("ab_id"));
            addrbook.setAb_name(rs.getString("ab_name"));
            addrbook.setAb_email(rs.getString("ab_email"));
            addrbook.setAb_birth(rs.getString("ab_birth"));
            addrbook.setAb_tel(rs.getString("ab_tel"));
            addrbook.setAb_comdept(rs.getString("ab_comdept"));
            addrbook.setAb_memo(rs.getString("ab_memo"));
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            disconnect();
        }
        return addrbook;
    }

    // 전체 주소록 목록을 가져오는 메서드
    public ArrayList<AddrBook> getDBList() {
        connect();
        ArrayList<AddrBook> datas = new ArrayList<AddrBook>();

        String sql = "select * from hr.addrbook order by ab_id desc";
        try {
            pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                AddrBook addrbook = new AddrBook();

                addrbook.setAb_id(rs.getInt("ab_id"));
                addrbook.setAb_name(rs.getString("ab_name"));
                addrbook.setAb_email(rs.getString("ab_email"));
                addrbook.setAb_comdept(rs.getString("ab_comdept"));
                addrbook.setAb_birth(rs.getString("ab_birth"));
                addrbook.setAb_tel(rs.getString("ab_tel"));
                addrbook.setAb_memo(rs.getString("ab_memo"));
                datas.add(addrbook);
            }
            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        finally {
            disconnect();
        }
        return datas;
    }
}