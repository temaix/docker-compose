package fr.temaix.test;

import fr.temaix.RequestPostgres;
import org.junit.Assert;
import org.junit.Test;

public class RequestPostgresTest {

    @Test
    public void test() {
        RequestPostgres requestPostgres = new RequestPostgres();
        String version = requestPostgres.readVersion();
        System.out.println(version);
        Assert.assertFalse(version.equals("0"));
    }

}
