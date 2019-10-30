<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <base href="<%=basePath%>"> 
    <title>学生公寓管理系统 | 登录</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>
<script language="JavaScript">

function mycheck(){
   if(isNull(form1.Type.value)){  
   alert("请选择身份！"); 
   return false;
   }
   if(isNull(form1.Username.value)){  
   alert("请输入用户名！"); 
   return false;
   }
   if(isNull(form1.Password.value)){
   alert("请输入密码！");
   return false;
   }
      
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>

<body class="gray-bg">
<center>
    <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h2 class="font-bold">欢迎使用学生公寓管理系统</h2>
                <p>
                       &nbsp; &nbsp; &nbsp; &nbsp;学生宿舍和公寓是学生日常生活与学习的重要场所，
                 是对学生进行思想政治工作和素质教育的重要阵地。
                 学生住宿管理事关学生人身安全和财产安全，
                 关系到学校正常的教学、生活秩序，
                 关系到学校和社会的稳定，
                 也关系到我国高等教育的改革和发展。
                </p>
                <p>
                </p>
                <p>
                    <small>  </small>
                </p>

            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form  name="form1" class="m-t"  action="GoLogin.action"   method="post" onSubmit="return mycheck()">
                  <span style="color:red;">
                    <%if(request.getAttribute("Msg")!=null){%>
                    <%=request.getAttribute("Msg")%>
                    <%}%>
                  </span>
                        <div class="form-group">
                            <div class="col-sm">
                                <select class="form-control" name="Type" id="Type">
                                    <option value="">请选择您的身份</option>
                                    <option value="系统管理员">系统管理员</option>
                                    <option value="楼宇管理员">公寓管理员</option>
                                    <option value="学生">学生</option>
                            </select>
                            </div>
                        </div>
                        <div class="form-group">

                            <input type="text"  name="Username"  id="Username" class="form-control" placeholder="请输入账号" required="" autocomplete="off">
                        </div>
                        <div class="form-group">
                            <input type="password"  name="Password" id="Password"  class="form-control" placeholder="请输入密码" required="" autocomplete="off">
                        </div>
                        <input  type="submit" class="btn btn-primary block full-width m-b"  name="button"  id="button"  value="登录"/>
                    </form>

                </div>
            </div>
        </div>
        <hr/>
    
    </div>
<div class="footer">
    <div style="text-align: center">
        <p>  Copyright Example Company © 2014-2015</p>
    
    </div>
</div>
</center>
</body>

</html>
