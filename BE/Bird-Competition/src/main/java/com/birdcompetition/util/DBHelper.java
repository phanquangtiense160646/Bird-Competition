package com.birdcompetition.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DBHelper {

    public static Connection getConnection() 
            throws ClassNotFoundException, SQLException {
                //1. Get current context
//        Context currentContext = new InitialContext();
//        //2. Get web app server context
//        Context tomcatContext = (Context)currentContext.lookup("java:comp/env");
//        //3. Look up DS from web app context
//        DataSource ds = (DataSource)tomcatContext.lookup("DSSE1729");
//        //4. Get connection
//        Connection con = ds.getConnection();
//        
//        return con;
        
        
        //1. Load Driver
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //2. Create connection String 
        String url = "jdbc:sqlserver://" 
                + "localhost:1433;"
                + "databaseName=BirdCompetitionDB;"
                +"encrypt=true;trustServerCertificate=true;";
        //3. Open connection
        Connection con = DriverManager.getConnection(url,"sa","12345");
        //4. Return connection to caller
        return con;
    }
}
