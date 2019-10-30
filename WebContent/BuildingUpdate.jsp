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
   if(isNull(form1.Building_Username.value)){  
   alert("请输入用户名！"); 
   return false;
   }
   if (document.form1.Building_Password.value != document.form1.Building_Password2.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
   return false; 
   }  
   if(isNull(form1.Building_Name.value)){
   alert("请输入姓名！");
   return false;
   }
   if(isNull(form1.Building_Sex.value)){
   alert("请选择性别！");
   return false;
   }
   if(isNull(form1.Building_Tel.value)){
   alert("请输入联系电话！");
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
                    <h3>修改公寓楼
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
                    <form class="ng-pristine ng-valid" name="form1" method="post"  action="BuildingUpdateSave.action"  onSubmit="return mycheck()">
                        <div class="form-group">
                        <input name="Building_ID" type="hidden" class="noshow" id="Building_ID" value="<s:property value='cnbean.Building_ID'/>">
                            <label for="Building_Name">公寓楼名称：</label>
                            <input type="text" class="form-control " name="Building_Name" autocomplete="off"
                                   id="Building_Name"  value="<s:property value='cnbean.Building_Name'/>">
                        </div>
                        <div class="form-group">
                            <label for="Building_Introduction">简介：</label>
                            <textarea type="text" class="form-control "  name="Building_Introduction"
                                   id="Building_Introduction" style="height:200px;"> 
                                   <s:property value='cnbean.Building_Introduction'/>
                                   </textarea>
                        </div>
                        <button name="button" id="button" type="submit" class="btn btn-primary sotactive" >确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                          <button class="btn btn-primary "  name="button2" id="button2"  onClick="javascript:history.back(-1);">返回</button>
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
