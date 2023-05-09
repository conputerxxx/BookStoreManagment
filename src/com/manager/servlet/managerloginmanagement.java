package com.manager.servlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.JDBC.jdbcutils.jdbcutils;
public class managerloginmanagement {
    Connection dbconn = null;
    public boolean login(String username, String pass) {

        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            conn = jdbcutils.getConnection();
            st=conn.createStatement();
            String sql="select count(*) from Admin where admin_id='"+username+"' and admin_password='"+pass+"'";
            rs=st.executeQuery(sql);
            int totalCount=0;
            if(rs.next())
                totalCount = rs.getInt(1);
            if(totalCount>0)
                return true;
            else
                return false;
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
