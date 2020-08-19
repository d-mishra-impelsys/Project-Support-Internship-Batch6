
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RegisterDao {
 private String dburl="jdbc:mysql://localhost:3306/mobiledb";
 private String dbuname="root";
 private String dbpassword="";
 private String dbdriver="com.mysql.jdbc.Driver";
 public void loadDriver(String dbdriver)
 {
	 try {
		Class.forName(dbdriver);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 }
 public Connection getConnection()
 {
	 Connection con=null;
	 try {
		con=DriverManager.getConnection(dburl, dbuname, dbpassword);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 return con;
 }
 public String insert(Registration registration)
 {
	 loadDriver(dbdriver);
	 Connection con=getConnection();
	 String result="Data Entered Successfully";
	 String sql="insert into mobiledb.register values(?,?,?,?,?,?,?,?,?,?)";
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,registration.getUserid());
		ps.setString(2,registration.getName());
		ps.setString(3,registration.getGender());
		ps.setString(4,registration.getEmail());
		ps.setString(5,registration.getPassword());
		ps.setString(6,registration.getPhonenumber());
		ps.setString(7,registration.getSecretquestion());
		ps.setString(8,registration.getSecretanswer());
		ps.setString(9,registration.getAddress());
		ps.setString(10,registration.getUtype());
		System.out.println("sql:"+ps.toString());
		ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		result="data not entered";
	}
	return result;
 }
}
