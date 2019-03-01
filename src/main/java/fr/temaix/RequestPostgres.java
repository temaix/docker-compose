package fr.temaix;

import java.sql.*;

public class RequestPostgres {

    public String readVersion() {

        String url = "jdbc:postgresql://localhost:5432/bdd";
        String user = "etraffic";
        String password = "etraffic";

        try (Connection con = DriverManager.getConnection(url, user, password);
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("SELECT VERSION()")) {

            if (rs.next()) {
                return rs.getString(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return "0";
    }
}