import java.sql.*;

public class jdbc_ex {
    
    public static void main(String args[]){
        class.forName("oracle.jdbc.driver.OracleDriver");
        class.froName("com.mysql.jdbc.Driver");
        class.froName("sun.jdbc.odbc.JdbcOdbcDriver");

        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name","root","passwrod");
        Connection con = DriverManager.getConnection("jdbc:odbc:dsn_name");

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from emp");
        while(rs.next()){
            System.out.println(rs.getInt(1)+ " " +rs.getString(2));
        }

        PreparedStatement stmt1 = con.prepareStatement("inseert from emp value(?,?,?)");
        stmt.setInt(1 , 100);
        stmt.setString(2 , "Anubhav");
        stmt.setString(3 , "Bindal");
        int i = stmt.executeUpdate();
        System.out.println(i + "updated query");

        CallableStatement stmt=con.prepareCall("{call insertR(?,?)}");  
        stmt.setInt(1,1011);  
        stmt.setString(2,"Amit");  
        stmt.execute();  
        System.out.println("Success");

        con.close();

    }
}
