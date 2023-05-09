package com.user.servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.JDBC.jdbcutils.jdbcutils;
public class registermanagement {
    Connection dbconn = null;
    public boolean register(String userid, String pass,String name,String sex,String password2) {
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            System.out.println("qqqq");
            conn = jdbcutils.getConnection();
            st=conn.createStatement();
            String sql1 = "select count(*) from Client where phone='"+userid+"'";
            System.out.println("aaaa");
            rs=st.executeQuery(sql1);
            int totalCount=0;
            if(rs.next())
                totalCount = rs.getInt(1);
            if(totalCount>0)
                return false;
            System.out.println("bbb");
            if(password2.equals(pass)){
                String sql="insert into Client(phone,name,password,Client_sex) values ('"+userid+"','"+name+"','"+pass+"','"+sex+"')";
                System.out.println(sql);
                int r=st.executeUpdate(sql);
                System.out.println(userid+name+pass+sex);
                if(r>0)
                    return true;
                else
                    return false;
            }else{
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }finally {
            try {
                jdbcutils.release(conn,st,rs);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}




