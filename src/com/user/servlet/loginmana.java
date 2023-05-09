package com.user.servlet;
import java.sql.*;
import java.util.Random;

import com.JDBC.jdbcutils.jdbcutils;
public class loginmana {
    Connection dbconn = null;
    public boolean login(String username, String pass) {
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            conn = jdbcutils.getConnection();
            st=conn.createStatement();
            String sql="select count(*) from Client where phone='"+username+"' and password='"+pass+"'";
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

    public void register(String phone,String password,String name,String sex){
        Connection conn=null;
        PreparedStatement ps = null;
        ResultSet rs=null;
        String username = "";
        Random ran = new Random();
        for(int i = 0;i < 10;i++){
            username += String.valueOf(ran.nextInt(10));
        }
        try {
            conn = jdbcutils.getConnection();
            String sql = "insert into Client(username,Client_sex,Client_phone,password,Client_name) value(?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,sex);
            ps.setString(3,phone);
            ps.setString(4,password);
            ps.setString(5,name);
            int count = ps.executeUpdate();
            if(count > 0){
                System.out.println("success");
            }else{
                System.out.println("fail");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                jdbcutils.release(conn,ps,rs);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
