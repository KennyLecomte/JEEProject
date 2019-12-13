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
import java.sql.ResultSetMetaData;
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
    private ArrayList<String> ResPrenom = new ArrayList<>();
    private ArrayList<String> ResNom = new ArrayList<>();
    private ArrayList<String> ResLogin = new ArrayList<>();
    private ArrayList<String> Res = new ArrayList<>();
    public ArrayList<String> searchUser(HttpServletRequest request, String search) 
    {
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
            System.out.println("yo");
            connexion = DriverManager.getConnection(url, utilisateur, motDePasse);
            statement = connexion.createStatement();
            resultat=statement.executeQuery("SELECT * FROM userlist WHERE (FName LIKE '%"+search+"%' OR LName LIKE '%"+search+"%' OR Login LIKE '%"+search+"%')");
            System.out.println("Requête \"SELECT * FROM userlist WHERE '"+search+"'");
            

            ResultSetMetaData rsmd = resultat.getMetaData();
            int columnsNumber = rsmd.getColumnCount();

            while ( resultat.next() ) {
                for (int i = 1; i <= columnsNumber; i+=4) {  
            //resultat2.add(Integer.toString(resultat.getInt(i)));
            //System.out.println("Adding "+resultat2.add(Integer.toString(resultat.getInt(i)))+" to Array");
            Res.add(resultat.getString(i+1));
            System.out.println("Adding "+resultat.getString(i+1)+" to Array "+ResPrenom.size()+" ");
            Res.add(resultat.getString(i+2)); 
            System.out.println("Adding "+resultat.getString(i+2)+" to Array "+ResNom.size()+" ");
            Res.add(resultat.getString(i+3)); 
            System.out.println("Adding "+resultat.getString(i+3)+" to Array "+ResLogin.size()+" ");
                }
            //Res.add(ResPrenom);
            //Res.add(ResNom);
            //Res.add(ResLogin);
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
        return Res;
    }
    
    public ArrayList<String> getAllUsers(HttpServletRequest request) 
    {
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
            resultat=statement.executeQuery("SELECT * FROM userlist");

            ResultSetMetaData rsmd = resultat.getMetaData();
            int columnsNumber = rsmd.getColumnCount();

            while ( resultat.next() ) 
            {
                for (int i = 1; i <= columnsNumber; i+=4) 
                {  
                    Res.add(resultat.getString(i+1));
                    Res.add(resultat.getString(i+2)); 
                    Res.add(resultat.getString(i+3)); 
                }
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
        return Res;
    }
}
