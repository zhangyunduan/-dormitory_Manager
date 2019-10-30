package com.action;

import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.bean.*;
import com.dao.*;


public class DamageAddSave extends ActionSupport {

	//下面是Action内用于封装用户请求参数的属性
	
	private String Damage_Student_Username ;
	private int Damage_DomitoryID;
    private String Damage_wup ;
    private String Damage_Remark ;
    private String Damage_Date ;


	public String getDamage_Student_Username() {
		return Damage_Student_Username;
	
	}

	public void setDamage_Student_Username(String damagestudentusername) {
		Damage_Student_Username = damagestudentusername;
//		System.out.println(Damage_Student_Username);
	}
	public int getDamage_DomitoryID(){
		return Damage_DomitoryID;
	}
	public void setDamage_DomitoryID(int damagedomitoryid){
		Damage_DomitoryID = damagedomitoryid;
//		System.out.println(Damage_DomitoryID);
	}
	public String getDamage_wup() {
		return Damage_wup;
	}

	public void setDamage_wup(String damagewup) {
		Damage_wup = damagewup;
//		System.out.println(Damage_wup);
	}
	public String getDamage_Remark(){
		return Damage_Remark;
	}
	public void setDamage_Remark(String damgerremark){
		Damage_Remark = damgerremark;
	}
	public String getDamage_Date(){
		return Damage_Date;
	}
	public void setDamage_Date(String damagedate){
		Damage_Date = damagedate;
	}
	
	//处理用户请求的execute方法
	public String execute() throws Exception {
		
		//解决乱码，用于页面输出
		HttpServletResponse response=null;
		response=ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		//创建session对象
		HttpSession session = ServletActionContext.getRequest().getSession();
		//验证是否正常登录
		if(session.getAttribute("id")==null){
			out.print("<script language='javascript'>alert('请重新登录！');window.location='Login.jsp';</script>");
			out.flush();out.close();return null;
		}
		
		//添加
		DamageBean cnbean=new DamageBean();
		cnbean.setDamage_Student_Username(Damage_Student_Username);
		cnbean.setDamage_DomitoryID(Damage_DomitoryID);
		cnbean.setDamage_wup(Damage_wup);
		cnbean.setDamage_Remark(Damage_Remark);
		cnbean.setDamage_Date(Damage_Date);
		new DamageDao().Add(cnbean);
		    
		//跳转
		out.print("<script language='javascript'>alert('添加成功！');window.location='MyDamageList.action';</script>");
		out.flush();out.close();return null;
		
	}
	
	//判断是否空值
	private boolean isInvalid(String value) {
		return (value == null || value.length() == 0);
	}
	
	//测试
	public static void main(String[] args) {
		System.out.println();
	}
	
}
