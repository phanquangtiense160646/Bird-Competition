/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
<<<<<<< HEAD
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
=======
>>>>>>> 1207d742945a5aa7a7a6eeea49ff0404f384e5fb

/**
 *
 * @author Admin
 */


public class DBHelper {
<<<<<<< HEAD

    public static Connection makeConnections()
            throws /*ClassNotFoundException,*/ SQLException, NamingException, ClassNotFoundException {
//        //1. Get current context
//        Context currentContext = new InitialContext();
//        //2. Get web app server context
//        Context tomcatContext =(Context)currentContext.lookup("java:comp/env");
//        //3. Look up DS from web app context
//        DataSource ds = (DataSource)tomcatContext.lookup("DSSE1729");
//        //4. Get connection
//        Connection con = ds.getConnection();      
//        return con;
        //1.Load Driver
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //2. Create Connection String
        String url = "jdbc:sqlserver://"
                + "localhost:1433;"
                + "databaseName=BirdCompetionDB";
        //3. Open Connection
        
        Connection con = DriverManager.getConnection(url, "sa", "12345");
        //4. Return connection to caller
        return con;
=======
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Connection conn= null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url= "jdbc:sqlserver://localhost:1433;databaseName=BirdCompetionDB";
        conn= DriverManager.getConnection(url, "sa", "12345");
        return conn;
>>>>>>> 1207d742945a5aa7a7a6eeea49ff0404f384e5fb
    }
}
