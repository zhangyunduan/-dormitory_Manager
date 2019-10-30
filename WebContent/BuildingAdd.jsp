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
   if(isNull(form1.Building_Name.value)){  
   alert("请输入名称！"); 
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
                    <h3>添加公寓楼
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
                    <form class="ng-pristine ng-valid" name="form1" method="post" action="BuildingAddSave.action" onSubmit="return mycheck()">
                        <div class="form-group">
                            <label for="Building_Name">公寓楼名称：</label>
                            <input type="text" class="form-control " name="Building_Name" autocomplete="off"
                                   id="Building_Name" placeholder="请输入公寓楼名称" >
                        </div>
                        <div class="form-group">
                            <label for="Building_Introduction">简介：</label>
                            <textarea type="text" class="form-control "  name="Building_Introduction"
                                   id="Building_Introduction" placeholder="请输入公寓楼简介" style="height:200px;"> </textarea>
                        </div>
                        <button name="button" id="button" type="submit" class="btn btn-primary sotactive" >添加</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="BuildingManager.action" class="btn btn-primary "  onClick="javascript:history.back(-1);">返回</a>
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
