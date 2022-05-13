package com.bean;

public class requirementBean {
private  int id;


private String name;   // name
private String domain;   //centre name 
private int vacancy;   //dose number
private String date;   //date
private String priority ;   //
private int ex; //// next dose
private String mode;
private int reid;
private int posted;

//[Vaccination_Record]
//        ([User_ID] 1 1st
//        ,[Payment_ID]  2nd
//        ,[Administer_ID] 3
//        ,[Center_ID]  4




//        ,[Vaccine_Name]  5
//        ,[Vaccine_ID]   6
//        ,[Date_Time]  7
//        ,[Dose_Number]  8
//        ,[Next_Dose]) 9
// 



private int center ;


public int getPosted() {
	return posted;
}
public void setPosted(int posted) {
	this.posted = posted;
}
public int getReid() {
	return reid;
}
public void setReid(int reid) {
	this.reid = reid;
}
@Override
public String toString() {
	return "requirementBean [id=" + id + ", name=" + name + ", domain=" + domain + ", vacancy=" + vacancy + ", date="
			+ date + ", priority=" + priority + ", ex=" + ex + ", mode=" + mode + ", reid=" + reid + ", posted="
			+ posted + "]";
}
public String getMode() {
	return mode;
}
public void setMode(String mode) {
	this.mode = mode;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDomain() {
	return domain;
}
public void setDomain(String domain) {
	this.domain = domain;
}
public int getVacancy() {
	return vacancy;
}
public void setVacancy(int vacancy) {
	this.vacancy = vacancy;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getPriority() {
	return priority;
}
public void setPriority(String priority) {
	this.priority = priority;
}
public int getEx() {
	return ex;
}
public void setEx(int ex) {
	this.ex = ex;
}


}
