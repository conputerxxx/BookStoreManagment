package com.JDBC.jdbcutils;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;
public class jdbcutils {
    private static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";;
    private static String url="jdbc:sqlserver://localhost:1433;DatabaseName=bookshop;encrypt=true;trustServerCertificate=true";
    private static String username="sa";
    private static String password="1";
    static {
        try {
            Class.forName(driver);//加载驱动
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    public static void release(Connection conn,Statement st,ResultSet rs) throws SQLException {
        if (rs!=null){
            rs.close();
        }
        if (st!=null){
            st.close();
        }
        if(conn!=null){
            conn.close();
        }
    }

}
