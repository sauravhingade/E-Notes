package com.DOA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.AbstractDocument.LeafElement;

import com.User.User;
import com.User.post;
import com.mysql.cj.protocol.Resultset;

public class postDAO {
	private Connection conn;
	

	public postDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public postDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addNotes(String title,String content,int ui)
	{
		boolean f=false;
		try {
			String query = "insert into post(title,content,uid) values (?,?,?)"; 
			PreparedStatement ps =conn.prepareStatement(query);
			ps.setString(1,title);
			ps.setString(2,content);
			ps.setInt(3, ui);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}	
		}
		catch (Exception e) 
		{
		e.printStackTrace();
		}
		return f;
	}
	
	public List<post> getdata(int id)
	{
		List<post> list =new ArrayList<post>();
		post po = null;
		try {
			
			String query= "select *from post where uid=? order by id DESC";
			PreparedStatement ps =conn.prepareStatement(query);
			ps.setInt(1, id);
			
		 ResultSet rs =ps.executeQuery();
		 while(rs.next())
		 {
			 po=new post();
			 po.setId(rs.getInt(1));
			 po.setTitle(rs.getString(2));
			 po.setContent(rs.getString(3));
			 po.setpDate(rs.getTimestamp(4));
			 list.add(po);
			 
		 }
			
		} catch (Exception e) {
			e.printStackTrace();
			
		
	}
		return list;
	}
	
	public post getdatabyid(int note_id)
	{
		post p =null;
		
		try {
			p=new post();
			
			String query="select *from post where id=?";
			PreparedStatement ps =conn.prepareStatement(query);
			ps.setInt(1, note_id);
			
			ResultSet rs =ps.executeQuery();
			if(rs.next())
			{
				p.setId(rs.getInt(1));
				p.setTitle(rs.getString(2));
				p.setContent(rs.getString(3));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}
	
	public boolean postupdate(int noteid,String title,String content)
	{
		boolean f=false;
		
		try {
			
			String query ="update post set title=?,content=? where id=?";
			PreparedStatement ps =conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, content);
			ps.setInt(3, noteid);
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean deletenotes(int nid)
	{
		boolean f=false;
		
		try {
			String query ="delete from post where id=?";
			PreparedStatement ps =conn.prepareStatement(query);
			ps.setInt(1, nid);
			int x=ps.executeUpdate();
			if (x==1) {
				f=true;
				
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}

}
