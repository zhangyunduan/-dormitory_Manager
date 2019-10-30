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
   
   if(isNull(form1.Building_ID.value)){
   alert("请选择公寓楼！");
   return false;
   }
   if(isNull(form1.Domitory_ID.value)){
   alert("请选择寝室！");
   return false;
   }
   if(isNull(form1.Student_Username.value)){  
   alert("请输入学生学号！"); 
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
                    <h3>学生入住登记
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
                    <form name="form1" method="post" action="StudentRZSave.action" onSubmit="return mycheck()"  class="ng-pristine ng-valid" >
                        <div>
                            <label for="3">公寓楼：</label>
                        </div>
                        <div class="form-group row" >
                            <div class="col-md-6" style="margin-left: 0px">
                                <select name="Building_ID" id="Building_ID" onChange="javascript:window.location='StudentRZ.action?BuildingID='+this.value;" class="  form-control " >
                                    <option value="">请选择公寓楼</option>
                                    <s:iterator value="buildinglist">
                    				  <option value="${Building_ID}" <s:if test="BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                    				  </s:iterator>
                                </select>
                            </div>
                        </div>
                        <div>
                            <label for="3">寝室：</label>
                        </div>
                        <div class="form-group row" >
                            <div class="col-md-6" style="margin-left: 0px">
                                <select name="Domitory_ID" id="Domitory_ID" class="  form-control ">
                                    <option value="">请选择寝室</option>
                                    <s:iterator value="domitorylist">
                        			<option value="${Domitory_ID}">${Domitory_Name}</option>
                      				</s:iterator>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="4">学生学号：</label>
                            <input type="text" class="form-control " name="Student_Username"
                                   id="Student_Username" placeholder="请输入学号"  autocomplete="off">
                        </div>
                        <button type="submit" class="btn btn-primary sotactive" >确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
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
