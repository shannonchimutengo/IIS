package com.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.registerBean;
import com.bean.LoginBean;

@Service
public class registerService {
	public static List<registerBean> regist = new ArrayList<registerBean>();
	private static int count = 1;
	static {
		registerBean r = new registerBean();
		r.setFirstname("harish");
		r.setLastname("krishna");
		r.setEmail("h@gmail.com");
		r.setId(8080);
		r.setPassword("admin");
		r.setUser("admin");
		regist.add(r);
		
		
		registerBean r1 = new registerBean();
		r1.setFirstname("harish");
		r1.setLastname("krishna");
		r1.setId(8085);
		r1.setEmail("hk@gmail.com");

		r1.setPassword("abcd");
		r1.setUser("Vaccinator");
		regist.add(r1);
		
		registerBean r2 = new registerBean();
		r2.setFirstname("harish");
		r2.setLastname("krishna");
		r2.setEmail("hkk@gmail.com");
		r2.setId(80);
		r2.setPassword("ab");
		r2.setUser("another user");
		regist.add(r2);
		
		System.out.println(regist);

		System.out.println("addedadmin");
	}
	
	public int getid(String  a)
	{
		for (registerBean r : regist) {
			if (a.equals(r.getEmail()) )
			{	
				return r.getId();
				}
		}
		
	return id ;	
	}
	public void addregister(registerBean registers) {
		regist.add(registers);
		System.out.println(regist);
		System.out.println("addeditems");

	}
	int id=1000;
	public int setid(registerBean r)
	{id++;
		r.setId(id);
		return r.getId();
	}

	public int val(String a, String b) {

		for (registerBean r : regist) {
			if (a.equals(r.getEmail()) && b.equals(r.getPassword()))
			{	 if(("admin").equals(r.getUser()))
			{
			return 1;
			}
				
				return 2;
				}
		}

		for (registerBean r : regist) {
			if (a.equals(r.getEmail()) && b.equals(r.getPassword())) {
				if(("admin").equals(r.getUser()))
				{
				return 1;
				}
				}
		}
//
//		for (registerBean r : regist) {
//			if (a == r.getId() && b.equals(r.getPassword())) {
//				if(("candidate").equals(r.getUser())) {
//				return 3;
//				}}
//		}

		return 0;
	}
	
	public registerBean retrieveregister(int id) {
		for (registerBean r : regist) {
			if (r.getId() == id)
				return r;
		}
		return null;
	}
	

	public boolean correct(registerBean register) {

		return true;
	}
}
