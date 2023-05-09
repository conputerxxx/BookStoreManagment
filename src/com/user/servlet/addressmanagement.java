package com.user.servlet;

import com.JDBC.jdbcutils.jdbcutils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class addressmanagement {
    Connection dbconn = null;
    public boolean addaddress(String addr, String exact,String text,String name,String number) {
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;

        try {
            System.out.println("qqqq");
            conn = jdbcutils.getConnection();
            st=conn.createStatement();
            String sql1 = "select count(*) from Client where phone='"+number+"'";
            System.out.println("aaaa");
            rs=st.executeQuery(sql1);
            int totalCount=0;
            if(rs.next())
                totalCount = rs.getInt(1);
            if(totalCount==0)
                return false;
            System.out.println("bbb");
            String sql="insert into Addresss(city,detailaddress,email,receivername,phone) values ('"+addr+"','"+exact+"','"+text+"','"+name+"','"+ number+"')";
            System.out.println(sql);
            int r=st.executeUpdate(sql);
            if(r>0)
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
