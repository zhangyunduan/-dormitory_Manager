package com.dao;

import com.db.DBHelper;
import com.bean.DamageBean;

import java.util.*;
import java.sql.*;

public class DamageDao {
	
	//获取列表
		//查询报修清单
	public List<DamageBean>GetList(String strwhere,String strorder){
		String sql="select Damage_ID, Damage_Student_Username, Student_Name,Student_Class,Building_Name,Domitory_Name,Domitory_Type,Damage_wup,Damage_Remark,Damage_Date,"
				+ "Domitory_BuildingID,Domitory_ID from Damage,Domitory,Building,Student where Damage_Student_Username=Student_Username "
				+ "and Damage_DomitoryID=Domitory_ID and Domitory_BuildingID=Building_ID and Domitory_ID !=0";
		if(!(isInvalid(strwhere)))
		{
			sql+=" and "+strwhere;
		}
		if(!(isInvalid(strorder)))
		{
			sql+=" order by "+strorder;
		}
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		List<DamageBean> list=new ArrayList<DamageBean>();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()){
				DamageBean cnbean=new DamageBean();	
				cnbean.setDamage_ID(rs.getInt("Damage_ID"));
				cnbean.setDamage_Student_Username(rs.getString("Damage_Student_Username"));
				cnbean.setStudent_Name(rs.getString("Student_Name"));
				cnbean.setStudent_Class(rs.getString("Student_Class"));
				cnbean.setBuilding_Name(rs.getString("Building_Name"));
				cnbean.setDomitory_Name(rs.getString("Domitory_Name"));
				cnbean.setDomitory_Type(rs.getString("Domitory_Type"));
				cnbean.setDamage_wup(rs.getString("Damage_wup"));
				cnbean.setDamage_Remark(rs.getString("Damage_Remark"));
				cnbean.setDamage_Date(rs.getString("Damage_Date"));
				cnbean.setDomitory_Number(rs.getString("Domitory_BuildingID"));
				cnbean.setDomitory_ID(rs.getInt("Domitory_ID"));
//				cnbean.setDamage_ID(rs.getInt("Damage_ID"));
				list.add(cnbean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	//查询登录用户的寝室ID
	public List<DamageBean>GetList1(String strwhere,String strorder){
		String sql="select Student_Username,Building_Name,Domitory_Name,Domitory_ID  from Domitory,Building,"
				+ "Student where  Student_DomitoryID=Domitory_ID and Domitory_BuildingID=Building_ID and  Domitory_ID !=0";
		if(!(isInvalid(strwhere)))
		{
			sql+=" and "+strwhere;
		}
		if(!(isInvalid(strorder)))
		{
			sql+=" order by "+strorder;
		}
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		List<DamageBean> list=new ArrayList<DamageBean>();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()){
				DamageBean cnbean=new DamageBean();
				cnbean.setStudent_Username(rs.getString("Student_Username"));
				cnbean.setBuilding_Name(rs.getString("Building_Name"));
				cnbean.setDomitory_Name(rs.getString("Domitory_Name"));
				cnbean.setDomitory_ID(rs.getInt("Domitory_ID"));
				list.add(cnbean);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	//获取指定ID的实体Bean
	public DamageBean GetBean(int id){
		String sql="select Damage_Student_Username, Student_Name,Student_Class,Building_Name,Domitory_Name,Domitory_Type,Damage_wup,Damage_Remark,Damage_Date,Domitory_BuildingID  from Damage,Domitory,Building,Student where Damage_Student_Username=Student_Username and Damage_DomitoryID=Domitory_ID and Domitory_BuildingID=Building_ID and Domitory_ID !=0="+id;
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		DamageBean cnbean=new DamageBean();
		try{
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()){
				cnbean.setDamage_Student_Username(rs.getString("Damage_Student_Username"));
				cnbean.setStudent_Name(rs.getString("Student_Name"));
				cnbean.setStudent_Class(rs.getString("Student_Class"));
				cnbean.setBuilding_Name(rs.getString("Building_Name"));
				cnbean.setDomitory_Name(rs.getString("Domitory_Name"));
				cnbean.setDomitory_Type(rs.getString("Domitory_Type"));
				cnbean.setDamage_wup(rs.getString("Damage_wup"));
				cnbean.setDamage_Remark(rs.getString("Damage_Remark"));
				cnbean.setDamage_Date(rs.getString("Damage_Date"));
				cnbean.setDomitory_Number(rs.getString("Domitory_BuildingID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnbean;
	}
	
	//添加
	public void Add(DamageBean cnbean){
		String sql="insert into Damage (";
		sql+="Damage_Student_Username,Damage_DomitoryID,Damage_wup,Damage_Remark,Damage_Date";
		sql+=") values(";
		sql+="'"+cnbean.getDamage_Student_Username()+"','"+cnbean.getDamage_DomitoryID()+"','"+cnbean.getDamage_wup()+"','"+cnbean.getDamage_Remark()+"','"+cnbean.getDamage_Date()+"'";
		sql+=")";
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
//	//修改
//	public void Update(DomitoryBean cnbean){
//		String sql="update Domitory set ";
//		sql+="Domitory_BuildingID='"+cnbean.getDomitory_BuildingID()+"',";
//		sql+="Domitory_Name='"+cnbean.getDomitory_Name()+"',";
//		sql+="Domitory_Type='"+cnbean.getDomitory_Type()+"',";
//		sql+="Domitory_Number='"+cnbean.getDomitory_Number()+"',";
//		sql+="Domitory_Tel='"+cnbean.getDomitory_Tel()+"'";
//		
//		sql+=" where Domitory_ID='"+cnbean.getDomitory_ID()+"'";
//		Statement stat = null;
//		ResultSet rs = null;
//		Connection conn = new DBHelper().getConn();
//		try{
//			stat = conn.createStatement();
//			stat.executeUpdate(sql);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (conn != null)
//					conn.close();
//				if (stat != null)
//					stat.close();
//				if (rs != null)
//					rs.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//	}
	//删除
	public void Delete(String strwhere){
		String sql="delete From Damage where ";
		sql+=strwhere;
		Statement stat = null;
		ResultSet rs = null;
		Connection conn = new DBHelper().getConn();
		try{
			stat = conn.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (stat != null)
					stat.close();
				if (rs != null)
					rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	
	//判断是否空值
	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	
	//测试
	public static void main(String[] args) {
		System.out.println("");
	}
	
}

