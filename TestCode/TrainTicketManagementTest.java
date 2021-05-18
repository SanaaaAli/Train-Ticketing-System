package runner;

import static org.junit.Assert.*;


import org.junit.AfterClass;

import org.junit.BeforeClass;
import org.junit.Test;


public class TrainTicketManagementTest {

	@BeforeClass
	public static void setUpClass()  {
	}

	@AfterClass
	public static void tearDownClass()  {
	}

	
	@Test
    public void testLoginCheck() {
        System.out.println("loginCheck");
        String id = "sanjida";
        String pass = "kabbo";
        TrainTicketManagement instance = new TrainTicketManagement();
        String expResult = "pass";
        String result = instance.loginCheck(id, pass);
        assertEquals(expResult, result);
   }
	
	@Test
    public void teststationCheck() {
        System.out.println("stationCheck");
        String stationFrom = "Dhaka";
        String stationTo = "Chittagong";
        TrainTicketManagement x = new TrainTicketManagement();
        String expResult = "pass";
        String result = x.stationCheck(stationFrom, stationTo);
        assertEquals(expResult, result);
   }

	@Test
    public void testpriceCheck() {
        System.out.println("priceCheck");
        String ticketType = "Cabin";
        String price = "2000Tk";
        TrainTicketManagement y = new TrainTicketManagement();
        String expResult = "pass";
        String result = y.priceCheck(ticketType, price);
        assertEquals(expResult, result);
   }
	
	
}
