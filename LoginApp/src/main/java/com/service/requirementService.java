package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.bean.requirementBean;

@Service
public class requirementService {
	
	public static List<requirementBean> req = new ArrayList<requirementBean>();
	
	public static List<requirementBean> reqpost = new ArrayList<requirementBean>();

	int i =99;
	public void addrequirement(requirementBean requirement) {
		i++;
		requirement.setReid(i);
		requirement.setPosted(0);
		req.add(requirement);
		
		System.out.println(req);
		System.out.println("addeditems");

	}
	  
	
	
	
	
	
	
	
	
	
	
	
	public void setmode(requirementBean requirement) {
		if(requirement.getEx()<2) requirement.setMode("Pharmecy");
		else if(requirement.getEx()>2&&requirement.getEx()<6) requirement.setMode("Hospital");
		else requirement.setMode("NGO");
	}
	
	
	public List<requirementBean> retrieverequirement(int id) {
		List<requirementBean> filteredreq = new ArrayList<requirementBean>();
		for (requirementBean requ : req) {
			if (requ.getId()==id)
				filteredreq.add(requ);
		}
		System.out.println(filteredreq);
		return filteredreq;
	}
	public List<requirementBean> retrievereqall() {
		List<requirementBean> filteredreq = new ArrayList<requirementBean>();
		for (requirementBean requ : req) {
			if (requ.getPosted()==0)
				filteredreq.add(requ);
		}
		System.out.println(filteredreq);
		return filteredreq;
		
		
	}
	public List<requirementBean> retrievereqallpost() {
		List<requirementBean> filteredreq = new ArrayList<requirementBean>();
		for (requirementBean requ : req) {
			if (requ.getPosted()==1)
				filteredreq.add(requ);
		}
		System.out.println(filteredreq);
		return filteredreq;
		
		
	}
	
	
	public void setpost(int reid) {
		for (requirementBean rq : req) {
			if (rq.getReid()   == reid)
				rq.setPosted(1);
		}
	}
	
	public void deletepost(int reid)
	{
		for (requirementBean rq : req) {
			if (rq.getReid()   == reid)
				req.remove(rq);
		}
		
	}
	
	
	public requirementBean retrievereq(int reid) {
		for (requirementBean rq : req) {
			if (rq.getReid()   == reid)
				return rq;
		}
		return null;
	}
	

}
