package com.os.dal;

import java.sql.*;

public class Conexao {
    public static Connection conector(){
        
        java.sql.Connection conexao = null;
        
        String driver = "com.mysql.jdbc.Driver";
        
        String url="jdbc:mysql://localhost:3306/dbos";
        
        String user="root";
        String password="234";
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }       
    }
}       