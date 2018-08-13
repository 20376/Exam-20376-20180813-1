package DButil;
import java.sql.*;
public class DbConnect {
private static String Driver="com.mysql.jdbc.Driver";
private static String dbName="exam";
private static String url="jdbc:mysql://127.0.0.1:3306/"+dbName;
private static String username="root";
private static String pwd="123456";

//Á¬½Ó
public static Connection getDBconnection(){
	Connection con=null;
	try{
		Class.forName(Driver);
		con=DriverManager.getConnection(url,username,pwd);
	}catch(Exception e){
		e.printStackTrace();
	}
	return con;
}
//¹Ø±Õ
public static void closeDB(Connection con,PreparedStatement pstm,ResultSet rs){
	try{
		if(rs!=null)
			rs.close();
		if(pstm!=null)
			pstm.close();
		if(con!=null)
			con.close();
	}catch(SQLException e){
		e.printStackTrace();}
	}
}

