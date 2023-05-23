package com.user.servlet;


import com.JDBC.jdbcutils.jdbcutils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class addBookManagement {
    Connection dbconn = null;
    public boolean addBook(String ISBN,String price,String bookname,String number,String author,String publisher,String bookinfo)
    {
        Connection conn=null;
        Statement st=null;
        ResultSet rs=null;
        try {
            System.out.println("qqqq");
            conn = jdbcutils.getConnection();

            st=conn.createStatement();
            String sql2 = "select count(*) from Books where book_id='"+ISBN+"'";
            System.out.println("aaaa");
            rs=st.executeQuery(sql2);
            System.out.println("cccc");
            int totalCount=0;
            if(rs.next())
                totalCount = rs.getInt(1);
            if(totalCount>0)
                return false;
            System.out.println("bbb");
            String sql="insert into Books(book_id,book_price,book_name,book_num,book_author,book_publisher,book_info) values ('"+ISBN+"','"+price+"','"+bookname+"','"+number+"','"+author+"','"+publisher+"','"+bookinfo+"')";
            System.out.println(sql);
            int r=st.executeUpdate(sql);
            System.out.println(ISBN+price+bookname+number);

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
