/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author klecomte.ir2021
 */
public class jdbcClass 
{
    public void addUser(HttpServletRequest request, String firstName, String lastName, String userName) {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
        } 
        catch (ClassNotFoundException e) 
        {
            System.out.println("Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
                    + e.getMessage());
        }

        String url = "jdbc:mysql://localhost/jeeproject";
        String utilisateur = "root";
        String motDePasse = "";
        Connection connexion = null;
        Statement statement = null;
        try 
        {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            statement = connexion.createStatement();
            statement.executeUpdate("INSERT INTO userlist(fname,lname,login) VALUES(\""+firstName+"\",\""+lastName+"\",\""+userName+"\");");
            System.out.println("Requête \"INSERT INTO userlist(fname,lname,login) VALUES(\""+firstName+","+lastName+","+userName+");\" effectuée !");
        } 
        catch (SQLException e) 
        {
            System.out.println("Erreur lors de la connexion : <br/>"
                    + e.getMessage());
        } 
        finally 
        {
            if (statement != null) 
            {
                try 
                {
                    statement.close();
                } 
                catch (SQLException ignore){}
            }
            if (connexion != null) 
            {
                try 
                {
                    connexion.close();
                } 
                catch (SQLException ignore) {}
            }
        }
    }
    private ArrayList<String> resultat2 = new ArrayList<>();
    public ArrayList<String> searchUser(HttpServletRequest request, String search) {
        
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
        } 
        catch (ClassNotFoundException e) 
        {
            System.out.println("Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
                    + e.getMessage());
        }
        ResultSet resultat;
        String url = "jdbc:mysql://localhost/jeeproject";
        String utilisateur = "root";
        String motDePasse = "";
        Connection connexion = null;
        Statement statement = null;
        try 
        {
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            statement = connexion.createStatement();
            resultat=statement.executeQuery("SELECT * FROM userlist WHERE (FName LIKE '"+search+"' OR LName LIKE '"+search+"' OR Login LIKE '"+search+"')");
            System.out.println("Requête \"SELECT * FROM userlist WHERE '"+search+"'");
            
            
            while ( resultat.next() ) {
            String ID = Integer.toString(resultat.getInt( "ID" ));
            String FName = resultat.getString( "FName" );
            String LName = resultat.getString( "Lname" );
            String Login = resultat.getString( "Login" );
            
            resultat2.add(ID);
            resultat2.add(FName);
            resultat2.add(LName);
            resultat2.add(Login);    
        }
            
        } 
        catch (SQLException e) 
        {
            System.out.println("Erreur lors de la connexion : <br/>"
                    + e.getMessage());
        } 
        finally 
        {
            if (statement != null) 
            {
                try 
                {
                    statement.close();
                } 
                catch (SQLException ignore){}
            }
            if (connexion != null) 
            {
                try 
                {
                    connexion.close();
                } 
                catch (SQLException ignore) {}
            }
        }
        return resultat2;
    }
}
