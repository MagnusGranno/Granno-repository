package com.company;

import java.sql.*;
import java.util.ArrayList;


public class Main
{
    static final String driver = "com.mysql.jdbc.Driver";
    static final String url = "jdbc:mysql://localhost/world";
    static final String USER = "root";
    static final String PASS = "magnus2139";

    public static void main(String[] args)
    {
        Connection conn = null;
        Statement stmt = null;
        Statement stmt2 = null;
        try
        {
            Class.forName(driver);
            System.out.println("Connecting to database....");
            conn = DriverManager.getConnection(url, USER, PASS);


            System.out.println("Creating statement...");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT count(*) FROM city";
            ResultSet rs = stmt.executeQuery(sql);

            while(rs.next())
            {
                int count = rs.getInt("count(*)");
                System.out.println("Cities: " + count);

            }

            stmt2 = conn.createStatement();
            String sql2;
            sql2 = "SELECT * FROM city WHERE population > 5000000 ORDER BY population DESC;";
            ResultSet rs2 = stmt2.executeQuery(sql2);
            City obj = null;
            while(rs2.next())
            {

                obj = new City(rs2.getInt("ID"), rs2.getString("Name"), rs2.getString("CountryCode"), rs2.getString("District"),rs2.getInt("Population"));
                obj.addCity(obj);

            }


                rs.close();
                stmt.close();
                conn.close();


        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        } finally
        {
            try
            {
                if (stmt != null)
                {
                    stmt.close();
                }


            }
            catch (SQLException e1)
            {
                e1.printStackTrace();
            }
            try
            {
                if (conn != null)
                {
                    conn.close();

                }
            }
            catch (SQLException e2)
            {
                e2.printStackTrace();
            }


        }
        System.out.println("Good bye...");

    }
}
