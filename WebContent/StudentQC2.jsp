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
   if(isNull(form1.Out_Remark.value)){  
   alert("请输入备注！"); 
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
                    <h3>毕业生离校登记</h3>
                </div>
                <div class="ibox-content">
                    <p  style="color: #dd4444;font-size:20px;margin-left: 40px">此功能只适用于毕业生，离校之后将不可恢复！请谨慎操作！</p>
                    <form class="ng-pristine ng-valid" name="form1" method="post" action="StudentQCSave.action" onSubmit="return mycheck()">
                        <div class="form-group">
                            <label for="1">学生学号：</label>
                            <input type="text" class="form-control " value="<s:property value='cnbean.Student_Username'/>"
                                   id="1"  readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="4">学生姓名：</label>
                            <input type="text" class="form-control " value="<s:property value='cnbean.Student_Name'/>"
                                   id="4" readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="4">学生性别：</label>
                            <input type="text" class="form-control " value="<s:property value='cnbean.Student_Sex'/>"
                                   id="4"  readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="4">当前所住公寓楼：</label>
                            <input type="text" class="form-control " value="<s:property value='cnbean.Building_Name'/>"
                                   id="4" readonly="readonly" >
                        </div>
                        <div class="form-group">
                            <label for="4">当前所住寝室：</label>
                            <input type="text" class="form-control " value="<s:property value='cnbean.Domitory_Name'/>"
                                   id="4" readonly="readonly" >
                        </div>
                        <div class="form-group">
                            <label for="4">离校备注：</label>
                            <textarea type="text" class="form-control " name="Out_Remark" 
                                      id="Out_Remark" placeholder="请输入备注"  style="height:200px;"> </textarea>
                        </div>
                        <input name="Student_ID" type="hidden" class="noshow" id="Student_ID" value="<s:property value='cnbean.Student_ID'/>">
                        <button name="button" id="button" type="submit" class="btn btn-primary sotactive" >确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="StudentQC.jsp" class="btn btn-primary "  onClick="javascript:history.back(-1);">返回</a>
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





