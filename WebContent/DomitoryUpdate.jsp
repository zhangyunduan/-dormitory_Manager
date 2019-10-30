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
   if(isNull(form1.Domitory_BuildingID.value)){  
   alert("请选择楼宇！"); 
   return false;
   }
   if(isNull(form1.Domitory_Name.value)){
   alert("请输入寝室号！");
   return false;
   }
   if(isNull(form1.Domitory_Type.value)){
   alert("请输入寝室类型！");
   return false;
   }
   if(isNull(form1.Domitory_Number.value)){
   alert("请输入人数！");
   return false;
   }
   if(isNull(form1.Domitory_Tel.value)){
   alert("请输入电话！");
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
                    <h3>修改寝室
                        <small></small>
                    </h3>
                </div>
                
                <div class="ibox-content">
                    <form name="form1" method="post"  action="DomitoryUpdateSave.action"  onSubmit="return mycheck()" >
                        <div class="form-group row" >
                            <div class="col-md-6" style="margin-left: 0px">
                            <input name="Domitory_ID" type="hidden" class="noshow" id="Domitory_ID" value="<s:property value='cnbean.Domitory_ID'/>">
                                <label for="Domitory_BuildingID">公寓楼：</label>
                                <select name="Domitory_BuildingID"  id="Domitory_BuildingID" class="  form-control ">
                                    <option value="">请选择公寓楼</option>
                                    <s:iterator id="aa" value="list">
                     		     	<option value="${Building_ID}" <s:if test="cnbean.Domitory_BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                   					 </s:iterator>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Domitory_Name">寝室号：</label>
                            <input type="text" class="form-control " name="Domitory_Name" autocomplete="off" id="Domitory_Name"  value="<s:property value='cnbean.Domitory_Name'/>">
                        </div>
                        <div class="form-group">
                            <label for="Domitory_Type">寝室类型：</label>
                            <input type="text" class="form-control " name="Domitory_Type" autocomplete="off"
                                   id="Domitory_Type"  value="<s:property value='cnbean.Domitory_Type'/>">
                        </div>
                        <div class="form-group">
                            <label for="Domitory_Number">人数：</label>
                            <input size="50" type="text" class="form-control" name="Domitory_Number" autocomplete="off"
                                   id="Domitory_Number"   value="<s:property value='cnbean.Domitory_Number'/>">
                        </div>
                        <div class="form-group">
                            <label for="3">联系方式：</label>
                            <input type="text" class="form-control " name="Domitory_Tel" autocomplete="off"
                                   id="Domitory_Tel"  value="<s:property value='cnbean.Domitory_Tel'/>">
                        </div>
                        <button type="submit" class="btn btn-primary sotactive"  name="button" id="button" >确定 	</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="DomitoryManager.action" class="btn btn-primary "  onClick="javascript:history.back(-1);">返回</a>
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
