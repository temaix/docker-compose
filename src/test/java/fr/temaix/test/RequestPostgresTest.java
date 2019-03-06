package fr.temaix.test;

import fr.temaix.RequestPostgres;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class RequestPostgresTest {

    @BeforeClass
    public static void init() {
        String url = "jdbc:postgresql://localhost:5432/bdd";
        String user = "etraffic";
        String password = "etraffic";
        File sqlFile = new File("docker/init.sql");
        System.out.println(sqlFile.getAbsolutePath());

        try (Connection con = DriverManager.getConnection(url, user, password);
             Statement st = con.createStatement();
             BufferedReader in = new BufferedReader(new FileReader(sqlFile))) {
            String str;
            StringBuffer sb = new StringBuffer();
            while ((str = in.readLine()) != null) {
                sb.append(str + "\n ");
            }
            st.executeUpdate(sb.toString());
        } catch (Exception e) {
            System.err.println("Failed to Execute. The error is " + e.getMessage());
        }
    }

    @Test
    public void test() {
        RequestPostgres requestPostgres = new RequestPostgres();
        String version = requestPostgres.readVersion();
        System.out.println(version);
        Assert.assertFalse(version.equals("0"));
    }

}
