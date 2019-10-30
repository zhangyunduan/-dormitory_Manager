package com.bean;

import com.opensymphony.xwork2.interceptor.I18nInterceptor;

public class DamageBean {
	

	    private int Damage_ID ;
	    private String Damage_Student_Username;
	    private int Damage_DomitoryID ;
	    private String Damage_wup;
	    private String Damage_Remark;
	    private String Damage_Date;
	   
		public int getDamage_ID() {
			return Damage_ID;
		}
		public void setDamage_ID(int damageID) {
			Damage_ID = damageID;
		}
		public String getDamage_Student_Username() {
			return Damage_Student_Username;
		}
		public void setDamage_Student_Username(String damagestudentusername) {
			Damage_Student_Username = damagestudentusername;
		}
		public int getDamage_DomitoryID() {
			return Damage_DomitoryID;
		}
		public void setDamage_DomitoryID(int damagedomitory) {
			Damage_DomitoryID = damagedomitory;
		}
		public String getDamage_wup() {
			return Damage_wup;
		}
		public void setDamage_wup(String damagewup) {
			Damage_wup = damagewup;
		}
		public String getDamage_Remark() {
			return Damage_Remark;
		}
		public void setDamage_Remark(String damageremark) {
			Damage_Remark = damageremark;
		}
		public String getDamage_Date() {
			return Damage_Date;
		}
		public void setDamage_Date(String damagedate) {
			Damage_Date = damagedate;
		}
		
		private  int Domitory_ID;
		private String Domitory_Name ;
		private String Domitory_Tel ;
		private String Domitory_Type ;
	    private String Domitory_Number ;
	    private String Building_Name ;
	    
	    public int getDomitory_ID(){
	    	return Domitory_ID;
	    }
	    public void setDomitory_ID(int domitoryID){
	    	Domitory_ID= domitoryID;
	    }
		public String getDomitory_Name() {
			return Domitory_Name;
		}
		public void setDomitory_Name(String domitoryName) {
			Domitory_Name = domitoryName;
		}
		public String getBuilding_Name() {
			return Building_Name;
		}
		public void setBuilding_Name(String buildingName) {
			Building_Name = buildingName;
		}
		public String getDomitory_Tel() {
			return Domitory_Tel;
		}
		public void setDomitory_Tel(String domitoryTel) {
			Domitory_Tel = domitoryTel;
		}
		public String getDomitory_Type() {
			return Domitory_Type;
		}
		public void setDomitory_Type(String domitoryType) {
			Domitory_Type = domitoryType;
		}
		public String getDomitory_Number() {
			return Domitory_Number;
		}
		public void setDomitory_Number(String domitoryNumber) {
			Domitory_Number = domitoryNumber;
		}
		
		 	private String Student_Username ;
		 	private String Student_Name;
		 	private String Student_Sex;
		 	private String Student_Class;
		 	
			public String getStudent_Username() {
				return Student_Username;
			}
			public void setStudent_Username(String studentusername) {
				Student_Username = studentusername;
			}
			public String getStudent_Name(){
				return Student_Name;
			}
			public void setStudent_Name(String studentname){
				Student_Name=studentname;
			}
			public String getStudent_Sex(){
				return Student_Sex;
			}
			public void setStudent_Sex(String studentsex){
				Student_Sex=studentsex;
			}
			public String getStudent_Class(){
				return Student_Class;
			}
			public void setStudent_Class(String studentclass){
				Student_Class = studentclass;
			}
	}

