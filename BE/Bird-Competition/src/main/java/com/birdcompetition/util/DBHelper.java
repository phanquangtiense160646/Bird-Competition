package com.birdcompetition.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBHelper {
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection conn= null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url= "jdbc:sqlserver://localhost:1433;databaseName=BirdCompetionDB";
        conn= DriverManager.getConnection(url, "sa", "12345");
        return conn;
    }
}
