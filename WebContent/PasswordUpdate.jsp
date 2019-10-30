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

    <title>学生公寓管理系统</title>
	<base href="<%=basePath%>">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <script src="js/angularjs/angular.min.js"></script>
</head>
<script language="JavaScript">
function mycheck(){
   if(isNull(form1.Password.value)){  
   alert("请输入原密码！"); 
   return false;
   }
   if(isNull(form1.Password2.value)){
   alert("请输入新密码！");
   return false;
   }
   if(isNull(form1.Password3.value)){
   alert("请输重复输入新密码！");
   return false;
   }
   if (document.form1.Password2.value != document.form1.Password3.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
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
<body >
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h3>修改登录密码
                        <small></small>
                    </h3>
                </div>
                <div class="ibox-content">
                    <form name="form1" method="post" action="PasswordUpdateSave.action" onSubmit="return mycheck()" class="ng-pristine ng-valid">
                        <div class="form-group">
                            <label for="1">请输入原密码：</label>
                            <input type="password" class="form-control " name="Password"
                                   id="Password" placeholder="请输入密码" >
                                    <%if(request.getAttribute("Msg")!=null){%>
                      			<span style="color:red;"><%=request.getAttribute("Msg")%></span>
                      			<%}%>
                        </div>
                        <div class="form-group">
                            <label for="2">请输入新密码：</label>
                            <input type="password" class="form-control " name="Password2"
                                   id="Password2" placeholder="请输入新密码" >
                        </div>
                        <div class="form-group">
                            <label for="3">请重复输入新密码：</label>
                            <input type="password" class="form-control " name="Password3"
                                   id="Password3" placeholder="请再次输入新密码" >
                        </div>
                        <button  name="button" id="button" type="submit" class="btn btn-primary sotactive" >确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary "  name="button2" id="button2"  onClick="javascript:history.back(-1);">返回</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>
<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
</body>

</html>
