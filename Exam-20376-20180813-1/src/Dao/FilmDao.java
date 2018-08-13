package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import DButil.DbConnect;
import beans.Film;
public class FilmDao {
	private static Connection con=null;
	private static PreparedStatement pstmt=null;
	private static ResultSet rs=null;
	private static int count=0;
	//显示所有
			@SuppressWarnings("null")
			public List<Film> findAll() 
			{
				List<Film> list = new ArrayList<>();
				con=DbConnect.getDBconnection();
				String sql="select * from film";
				try {
					pstmt=con.prepareStatement(sql);
					rs=pstmt.executeQuery();
					while(rs.next()){
						Film f=new Film();
						f.setFilm_id(rs.getInt("film_id"));
						f.setTitle(rs.getString("title"));
						f.setDescription(rs.getString("description"));
						f.setLanguage(rs.getString("language"));
				
					list.add(f);
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				DbConnect.closeDB(con, pstmt, rs);
				return list;
			}
			//更新
			public int update(Film f,int Id){
				con=DbConnect.getDBconnection();
				String sql="update film set film_id=?,title=?,description=?,language=?where film_id=?";
				try {
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, f.getFilm_id());
					pstmt.setString(2, f.getTitle());
					pstmt.setString(3, f.getDescription());
					pstmt.setString(4, f.getLanguage());
					pstmt.setInt(5,Id);
					count=pstmt.executeUpdate();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				DbConnect.closeDB(con, pstmt, rs);
				return count;
			}
			//通过Id找到联系人
			@SuppressWarnings("null")
			public Film findById(int id) 
			{
				System.out.println("id"+id);
				Film f=new Film();
				con=DbConnect.getDBconnection();
				String sql="select * from film where film_id = ?";
				try {
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, id);
					rs=pstmt.executeQuery();
					while(rs.next())
					{
						f.setFilm_id(rs.getInt("film_id"));
						f.setTitle(rs.getString("title"));
						f.setDescription(rs.getString("description"));	
						f.setLanguage(rs.getString("language"));
						
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				DbConnect.closeDB(con, pstmt, rs);
				return f;
				
			}
			//更新
			public boolean save(Film o){
				boolean flag=false;
				try{		
			String sql="update film set film_id=?,title=?,description=?,language=?where film_id=?";
					con= DbConnect.getDBconnection();
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, o.getFilm_id());
					pstmt.setString(2, o.getTitle());
					pstmt.setString(3, o.getDescription());
					pstmt.setString(4, o.getLanguage());
					pstmt.setInt(5, o.getFilm_id());
					count= pstmt.executeUpdate();
					if(count==1){
						flag = true;
						} 
					}catch (SQLException e) {
						e.printStackTrace();
					}
					DbConnect.closeDB(con, pstmt, rs);
				return flag;
			}
			//删除
			public boolean deleteById(Integer Id){
				boolean flag=false;
				try{		
			String sql="delete from film where film_id=?";
					con= DbConnect.getDBconnection();
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, Id);
					
					count= pstmt.executeUpdate();
					if(count==1){
						flag = true;
						} 
					}catch (SQLException e) {
						e.printStackTrace();
					}
					DbConnect.closeDB(con, pstmt, rs);
				return flag;
			}
			//添加
			public boolean insert(Film o) {
				boolean flag=false;
				try{		
			String sql="insert into film(film_id,title,description,language)"
					+ "values(?,?,?,?) ";
					con= DbConnect.getDBconnection();
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, o.getFilm_id());
					pstmt.setString(2, o.getTitle());
					pstmt.setString(3, o.getDescription());
					pstmt.setString(4, o.getLanguage());
					count= pstmt.executeUpdate();
					if(count==1){
						flag = true;
						} 
					}catch (SQLException e) {
						e.printStackTrace();
					}
					DbConnect.closeDB(con, pstmt, rs);
				return flag;
			}
			
}
