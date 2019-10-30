package com.action;

import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.regexp.internal.recompile;
import com.bean.*;
import com.dao.*;


public class DamageAdd1 extends ActionSupport {

	//下面是Action内用于封装用户请求参数的属性
	private List<DamageBean> list;
	public List<DamageBean> getList() {
		return list;
	}
	public void setList(List<DamageBean> list) {
		this.list = list;
	}
	
	private String Student_Username;
	private String Building_Name;
	private String Domitory_Name;
	private int Domitory_ID;
	
	private DamageBean cnbean;
	
	public String getStudent_Username() {
		return Student_Username;
	}
	public void setStudent_Username(String studentusername) {
		Student_Username = studentusername;
	}
	public String getBuilding_Name(){
		return Building_Name;
	}
	public void setBuilding_Name(String buildingname){
		Building_Name = buildingname;
	}
	public String getDomitory_Name(){
		return Domitory_Name;
	}
	public void setDomitory_Name(String domitoryname){
		Domitory_Name = domitoryname;
	}
	public int getDomitory_ID(){
		return Domitory_ID;
	}
	public void setDomitory_ID(int domitoryID){
		Domitory_ID =domitoryID;
	}

	public DamageBean getCnbean() {
		return cnbean;
	}

	public void setCnbean(DamageBean cnbean) {
		this.cnbean = cnbean;
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
		
		//查询
		list=new DamageDao().GetList1("Student_ID="+session.getAttribute("id"),"Student_Username desc");
		return SUCCESS;
		
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
