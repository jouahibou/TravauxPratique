/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package folder;



/**
 *
 * @author Lenovo
 */

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;

public class Connexion {
public static Connection con=null ;
public static ResultSet result ; 

public Connection connectionDb( String nomDb , String user , String password ) {
	try {
		
                Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+nomDb,user,password); 
                 
            }catch (Exception e) {
		e.printStackTrace();
                        }
	
	return con ;
	
}
    public static void main(String[] args) {
        Connexion conDb = new Connexion();
	con = conDb.connectionDb("javaee", "root", "") ;
        
        
    }
	
}	
	
    

