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
    <title>添加楼宇管理员</title>
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
   if(isNull(form1.Student_Username.value)){  
   alert("请输入学号！"); 
   return false;
   }
   if (document.form1.Student_Password.value != document.form1.Student_Password2.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
   return false; 
   }  
   if(isNull(form1.Student_Name.value)){
   alert("请输入姓名！");
   return false;
   }
   if(isNull(form1.Student_Sex.value)){
   alert("请选择性别！");
   return false;
   }
   if(isNull(form1.Student_Class.value)){
   alert("请输入班级！");
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
                    <h3>修改学生
                        <small></small>
                    </h3>
                    <!--<div class="ibox-tools">-->
                    <!--<a class="collapse-link">-->
                    <!--<i class="fa fa-chevron-up"></i>-->
                    <!--</a>-->
                    <!--<a class="close-link">-->
                    <!--<i class="fa fa-times"></i>-->
                    <!--</a>-->
                    <!--</div>-->
                </div>
                <div class="ibox-content">
                    <form class="ng-pristine ng-valid"  name="form1" method="post" action="StudentUpdateSave.action" onSubmit="return mycheck()" >
                        <div class="form-group">
                       		 <input name="Student_ID" type="hidden" class="noshow" id="Student_ID" value="<s:property value='cnbean.Student_ID'/>">
                            <label for="exampleInputEmail1">学号：</label>
                            <input type="text" class="form-control " name="Student_Username"  value="<s:property value='cnbean.Student_Username'/>"
                                   id="Student_Username" placeholder="学号"  autocomplete="off">
                        </div>
                        <div class="form-group">
                            <label for="1">密码：</label>
                            <input type="password" class="form-control " name="Student_Password"
                                   id="Student_Password" placeholder="不填写则默认不修改" >
                        </div>
                        <div class="form-group">
                            <label for="2">重复密码：</label>
                            <input size="50" type="password" class="form-control"  name="Student_Password2"
                                   id="Student_Password2" placeholder="不填写则默认不修改"  >
                        </div>
                        <div class="form-group">
                            <label for="3">姓名：</label>
                            <input type="text" class="form-control " name="Student_Name" autocomplete="off"
                                   id="Student_Name" placeholder="请输入姓名"  value="<s:property value='cnbean.Student_Name'/>">
                        </div>
                        <div>
                            <label for="3">性别：</label>
                        </div>
                        <div class="form-group row" >
                            <div class="col-md-6" style="margin-left: 0px">
                                <select name="Student_Sex" id="Student_Sex" class="  form-control ">
                                    <option value="">请选择性别</option>
                                    <option value="男"  <s:if test='cnbean.Student_Sex=="男"'>selected</s:if>>男</option>
                                    <option value="女" <s:if test='cnbean.Student_Sex=="女"'>selected</s:if>>女</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="4">班级：</label>
                            <input type="text" class="form-control " name="Student_Class"  autocomplete="off"
                                   id="Student_Class" placeholder="请输入班级"  value="<s:property value='cnbean.Student_Class'/>">
                        </div>
                        <button type="submit" class="btn btn-primary sotactive"  name="button" id="button">修改学生</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                       
                        <a href="StudentManager.action" class="btn btn-primary "  name="button2" id="button2" onClick="javascript:history.back(-1);">返回</a>
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
