package runner;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;

public class TrainTicketManagement {
	public void TrainTicketManagement() {
		Connection connection = null;
		
        try {
    	  // Load the MySQL JDBC driver
    	  String driverName = "com.mysql.jdbc.Driver";
    	  Class.forName(driverName);
    	 
    	  // Create a connection to the database
    	  String serverName = "localhost";
    	  String schema = "tsts_db";
    	  String url = "jdbc:mysql://" + serverName +  "/" + schema;
    	  String username = "root";
    	  String password = "";
    	  connection = DriverManager.getConnection(url, username, password);
    	 
    	  System.out.println("Connected to the Database Successfully!");
    	    } 
        
        catch (ClassNotFoundException e) {
    	  System.out.println("Could not find the database driver " + e.getMessage());
    	    } 
        
        catch (SQLException e) {
    	  System.out.println("Could not connect to the database " + e.getMessage());
    	  }
    	
        
        try {
        	// Get a result set containing all data from test_table
        	 
        	Statement statement = connection.createStatement();
        	//ResultSet results = statement.executeQuery("SELECT * FROM customer");
        	
        	for(int i=0; i<1;i++){
        		ResultSet results = statement.executeQuery("SELECT * FROM tbl_add_admin");
        		
        	    while(results.next()) {
        	        String Name = results.getString("name");
        	        System.out.print(i);
        	        System.out.println("Name:"+Name);
        	    }
        	}
        }
        
        catch (Exception e){
        	
        }
        
        }
	
	private static String userId[] = {"sanjida"};
    private static String password[] = {"kabbo"};
    private static String sFrom[] = {"Dhaka"};
    private static String sTo[] = {"Chittagong"};
    private static String tickType[] = {"Cabin"};
    private static String prices[] = {"2000Tk"};
    
    public String loginCheck(String id, String pass) {
        TrainTicketManagement A = new TrainTicketManagement();
        String uid=id;
        String upass=pass;
        String message="fail";
        for (int i = 0; i < A.userId.length ; i++) {
            if(A.userId[i].equals(uid)) {
                if (A.password[i].equals(upass)){
                    message = "pass";
                }
                else {
                message = "fail";
                }
            }
        }
        return message;
    }
    
    public String stationCheck(String stationFrom, String stationTo) {
        TrainTicketManagement A = new TrainTicketManagement();
        String from=stationFrom;
        String to=stationTo;
        
        String message="pass";
        for (int i = 0; i < A.sFrom.length ; i++) {
            if(A.sFrom[i].equals(from)) {
            	if(A.sTo[i].equals(to)) {
                message = "pass";
            }
            	else {
            		message = "fail";
            	}
            }
        }
        return message;
    }
    
	  public String priceCheck(String ticketType, String price) {
	        TrainTicketManagement A = new TrainTicketManagement();
	        String ticket=ticketType;
	        String amount=price;
	        
	        String message="pass";
	        for (int i = 0; i < A.tickType.length ; i++) {
	            if(A.tickType[i].equals(ticket)) {
	            	if(A.prices[i].equals(amount)) {
	                message = "pass";
	            }
	            	else {
	            		message = "fail";
	            	}
	            }
	        }
	        return message;
	    }


}	

