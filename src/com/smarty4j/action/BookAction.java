package com.smarty4j.action;

import java.text.SimpleDateFormat;

import com.opensymphony.xwork2.ActionSupport;
import com.smarty4j.entity.Book;
import com.smarty4j.entity.User;

public class BookAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	
	private User user;		//用户	
	private Book[] books;	//图书列表
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Book[] getBooks() {
		return books;
	}
	public void setBooks(Book[] books) {
		this.books = books;
	}
	
	@Override
	public String execute() throws Exception {
		
		user = new User("admin","admin");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		books = new Book[10];
		books[0] = new Book("Practical API Design", "Jaroslav Tulach", "Apress", format.parse("2008-07-29"), 75, 85);
        books[1] = new Book("Effective Java", "Joshua Bloch", "Addison-Wesley Professional", format.parse("2008-05-28"), 55, 70);
        books[2] = new Book("Java Concurrency in Practice", "Doug Lea", "Addison-Wesley Professional", format.parse("2006-05-19"), 60, 60);
        books[3] = new Book("Java Programming Language", "James Gosling", "Prentice Hall", format.parse("2005-08-27"), 65, 75);
        books[4] = new Book("Domain-Driven Design", "Eric Evans", "Addison-Wesley Professional", format.parse("2003-08-30"), 70, 80);
        books[5] = new Book("Agile Project Management with Scrum", "Ken Schwaber", "Microsoft Press", format.parse("2004-03-10"), 40, 80);
        books[6] = new Book("J2EE Development without EJB", "Rod Johnson", "Wrox", format.parse("2011-09-17"), 40, 70);
        books[7] = new Book("Design Patterns", "Erich Gamma", "Addison-Wesley Professional", format.parse("1994-11-10"), 60, 80);
        books[8] = new Book("Agile Software Development, Principles, Patterns, and Practices", " Robert C. Martin", "Prentice Hall", format.parse("2002-10-25"), 80, 75);
        books[9] = new Book("Design by Contract, by Example", "Richard Mitchell", "Addison-Wesley Publishing Company", format.parse("2001-10-22"), 50, 85); 
		
        return SUCCESS;
	}
}
