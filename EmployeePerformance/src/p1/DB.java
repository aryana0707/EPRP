package p1;
import java.sql.*;

public class DB {
	public static void main(String[] args) {		
		DB.getCon();
	}
	
	public static Connection getCon(){
		Connection conn=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "eprp", "eprp");
			System.out.println("Connected Successfully");
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}

}
