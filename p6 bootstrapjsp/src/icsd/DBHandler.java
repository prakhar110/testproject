package icsd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import oracle.jdbc.pool.OracleDataSource;

public class DBHandler
{
	public void deleteMultipalRows(String strSelectedEmpnos[])
	{
		String strres=" ";
		int i=0;
		for(String str:strSelectedEmpnos)
		{
			if(i==strSelectedEmpnos.length-1)
			{
				strres=strres+str;
			}
			else
			{
				strres=strres+str+",";
			}
			i++;
		}
		System.out.println(strres);
		Connection con=getDBcon();
		
		try
		{
			PreparedStatement stmt=con.prepareStatement("delete from tblemp where empno in("+strres+")");
			stmt.executeUpdate();
			stmt.close();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	public Connection getDBcon()
	{
		Connection con=null;
		OracleDataSource ods;
		try{
			ods=new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
			con=ods.getConnection("prakhar","icsd");
			System.out.println("con established");
		}
		catch(SQLException e)
		{
		  e.printStackTrace();
		}
		return con;
	}
	
	public LinkedList<Emp>getEmpTable()
	{
		LinkedList<Emp> lst=new LinkedList<>();
		Connection con=getDBcon();
		try
		{
			PreparedStatement stmt=con.prepareStatement("select * from tblemp");
			ResultSet rset=stmt.executeQuery();
			while(rset.next())
			{
				String strempno,strename,streage,streadd,stresal;
				strempno=rset.getString("empno");
				strename=rset.getString("ename");
				streage=rset.getString("eage");
				streadd=rset.getString("eadd");
				stresal=rset.getString("esal");
				
				Emp e1=new Emp(strempno,strename,streage,streadd,stresal);
				lst.add(e1);
			}
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return lst;
	}
	
	public void insertIntoTblEmp(Emp e1)
	{
		Connection con=getDBcon();
		try
		{
			System.out.println("dfhsdghs");
			PreparedStatement stmt=con.prepareStatement("insert into tblemp values(?,?,?,?,?)");
			stmt.setString(1, e1.getStrempno());
			stmt.setString(2, e1.getStrename());
			stmt.setString(3, e1.getStreage());
			stmt.setString(4, e1.getStreadd());
			stmt.setString(5, e1.getStresal());
			stmt.executeUpdate();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
}
				
				
				
				
			
