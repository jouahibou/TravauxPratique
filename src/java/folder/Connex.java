package folder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import folder.Etudiant;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
//import etudiants.EtudiantEtranger;


public class Connex {

    public int enregistreEtudiant(Etudiant etudiant) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO etudiant" +
            "  (prenom, nom, age, paysOrigine, sportPratique, groupeTD) VALUES " +
            " (?, ?, ?, ?,?,?)";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/groupeTD", "root", "");

            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, etudiant.getPrenom());
            preparedStatement.setString(2, etudiant.getNom());
            preparedStatement.setInt(3, etudiant.getAge());
            preparedStatement.setString(4, etudiant.getPaysOrigine());
            preparedStatement.setString(5, etudiant.getSportPratique());
            preparedStatement.setString(6, etudiant.getGroupeTD());

            System.out.println(preparedStatement);
  
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
  
            printSQLException(e);
        }
        return result;
    }
    
    public ArrayList<Etudiant> affichage() throws ClassNotFoundException, SQLException{
        
        ArrayList<Etudiant> liste = new ArrayList<>() ;
        
        String sql = "SELECT * FROM etudiant ";
        
        Class.forName("com.mysql.jdbc.Driver");
        
         try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/groupeTD", "root", "")){
            
        Statement st = connection.createStatement(); 
        ResultSet rs = st.executeQuery(sql);
        
                 while (rs.next()) { 
             Etudiant etu = new Etudiant();
             etu.nom= rs.getString("nom");
             etu.age = rs.getInt("age");
             etu.groupeTD = rs.getString("groupeTD");
             etu.sportPratique = rs.getString("sportPratique");
             etu.prenom= rs.getString("prenom");
             liste.add(etu);
             
            
            } 
               rs.close(); 
               st.close(); 
               connection.close();
             
        
       
        return liste;
    }catch (SQLException e) {
  
            printSQLException(e);
        }
        return null;
    }
    

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}