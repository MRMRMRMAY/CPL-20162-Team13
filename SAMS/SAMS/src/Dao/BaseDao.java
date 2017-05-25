package Dao;  
  
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
import java.sql.Statement;  
  
public class BaseDao {  
    public static Connection getConnection()throws Exception{  
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
        String url="jdbc:sqlserver://127.0.0.1:1433;database=mydb";  
        return DriverManager.getConnection(url, "sa", "sa");  
    }  
      
    public static void close(ResultSet rs,Statement sta,Connection con)throws Exception{  
        if(rs!=null){  
                 //�رս����  
                rs.close();  
        }  
        if(sta!=null){  
                 //�رղ������  
                 sta.close();  
        }  
        if(con!=null){  
                //�ر�����  
                con.close();  
        }  
    }  
}  