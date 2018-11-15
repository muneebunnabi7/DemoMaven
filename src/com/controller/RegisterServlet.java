package com.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBApplication;
import com.model.Register;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("processing1");
		String s1=request.getParameter("Fname");
		String s2=request.getParameter("Lname");
		String s3=request.getParameter("email");
		String s4=request.getParameter("contact");
		String s5=request.getParameter("pass");
		System.out.println("processing2");
		long contact=Long.parseLong(s4);
		
		

		Register r=new Register();
		System.out.println("processing3");
		r.setFname(s1);
		r.setLname(s2);
		r.setEmail(s3);
		r.setContact(contact);
		r.setPass(s5);
		
		System.out.println("processing4");
		
		DBApplication db=new DBApplication();
		List<Register> lst=new LinkedList<Register>();
		lst.add(r);
		System.out.println("saving");
		int i=db.saveData(lst);
		System.out.println("test1 is value"+i);
		if(i>0)
		{
			System.out.println("test2");
			response.sendRedirect("login.jsp");
		}
		System.out.println("data saved");
		
		
		}
	}


