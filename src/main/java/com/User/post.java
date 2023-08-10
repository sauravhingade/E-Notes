package com.User;

import java.sql.Date;
import java.sql.Timestamp;

public class post {
	private int id;
	private String title;
	private String content;
	private Timestamp pDate;
    private User user;
    
    
	public post(int id, String title, String content, Timestamp pDate, User user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pDate = pDate;
		this.user = user;
	}
	
	public post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getpDate() {
		return pDate;
	}
	public void setpDate(Timestamp timestamp) {
		this.pDate = timestamp;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
    
	
	
	

}
