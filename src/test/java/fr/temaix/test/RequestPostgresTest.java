package fr.temaix.test;

import fr.temaix.RequestPostgres;
import org.junit.Assert;
import org.junit.Test;

public class RequestPostgresTest {

    @Test
    public void test() {
        RequestPostgres requestPostgres = new RequestPostgres();
        Assert.assertFalse(requestPostgres.readVersion().equals("0"));
    }

}
