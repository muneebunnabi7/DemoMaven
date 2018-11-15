package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

import com.model.Login;
import com.model.Register;
public class DBApplication {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int i;
	public Connection myConnection()
	{
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Newuser123");
			System.out.println("Connection to db..");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("catch connection..");
		} catch (SQLException e) {
			System.out.println("catch connection..2");
			e.printStackTrace();
		}
		return con;
	}
	public int saveData(List<Register> lst)
	{
		//System.out.println("dbsave1");
		
		//Account a=lst.get(0);
		//Register a=null;
		//Register a=lst.get(0);
		
				
		try
		{
			
			Iterator<Register> itr=lst.iterator();
			//System.out.println("dbsave2");
			/*ps.setDouble(5,a.getBal());
			ps.setInt(1,a.getRno());*/
			while(itr.hasNext())
			{
			//	System.out.println("dbsave3");
				con=myConnection();
				Register a=(Register)itr.next();
				
				ps=con.prepareStatement("insert into registrations values(?,?,?,?,?)");
				ps.setString(1,a.getFname());
				ps.setString(2,a.getLname());
				ps.setString(3,a.getEmail());
				ps.setLong(4, a.getContact());
				ps.setString(5,a.getPass());
				i = ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			try
			{
				con.close();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return i;
	}
	public List<Register> getAllData()
	{
		List<Register> lst=new LinkedList<Register>();
		con=myConnection();
		try
		{
		Statement s= con.createStatement
					(ResultSet.TYPE_SCROLL_SENSITIVE,
							ResultSet.CONCUR_READ_ONLY);
			rs=s.executeQuery("select * from registrations");
			while(rs.next())
			{
				Register a=new Register();
			//	a.setRno(rs.getInt(1));
				a.setFname(rs.getString(1));
				a.setLname(rs.getString(2));
				a.setEmail(rs.getString(3));
				a.setContact(rs.getLong(4));
				a.setPass(rs.getString(5));
				
				//a.setPass(rs.getString(3));
				//a.setBal(rs.getDouble(4));
				lst.add(a);
				System.out.println("cnt");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return lst;
	}
	public boolean validateUser(Login l)
	{
		myConnection();
		List<Register> lst=getAllData();
		boolean b=false;
		for(Register r:lst)
		{
			if(Objects.equals(r.getEmail(), l.getEmail()))
			{
				if(Objects.equals(r.getPass(),l.getPass()))
				{
					b=true;
					break;
				}
			}
		}
		return b;
	}
}
