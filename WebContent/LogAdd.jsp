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
   if(isNull(form1.Log_Date.value)){  
   alert("请输入选择缺寝日期！"); 
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
                    <h3>学生缺寝登记</h3>
                </div>
                <div class="ibox-content">
                    <p  style="color: #dd4444;font-size:20px;margin-left: 40px">请仔细确定信息是否正确，提交之后将不可更改！</p>
                    <form class="ng-pristine ng-valid" name="form1" method="post" action="LogAddSave.action" onSubmit="return mycheck()">
                        <div class="form-group">
                        	<input name="Log_StudentID" type="hidden" class="noshow" id="Log_StudentID" value="<s:property value='cnbean.Student_ID'/>">
                            <label for="4">学生学号：</label>
                            <input type="text" class="form-control "  readonly="readonly"
                                   id="Student_Username"  value="<s:property value='cnbean.Student_Username'/>">
                        </div>
                        <div class="form-group">
                            <label for="4">学生姓名：</label>
                            <input type="text" class="form-control " readonly="readonly"
                                   id="Student_Name'"  value="<s:property value='cnbean.Student_Name'/>">
                        </div>
                        <div class="form-group">
                            <label for="4">学生性别：</label>
                            <input type="text" class="form-control " readonly="readonly"
                                   id="Student_Sex'"  value="<s:property value='cnbean.Student_Sex'/>">
                        </div>
                        <div class="form-group">
                            <label for="4">班级：</label>
                            <input type="text" class="form-control " readonly="readonly"
                                   id="Student_Class'"  value="<s:property value='cnbean.Student_Class'/>">
                        </div>
                        <div class="form-group">
                            <label for="4">寝室：</label>
                            <input type="text" class="form-control " readonly="readonly"
                                   id="Domitory_Name'"  value="<s:property value='cnbean.Domitory_Name'/>">
                        </div>
                        <div class="form-group">
                            <label for="4">缺寝日期：</label>
                            <input type="text" class="form-control "  name="Log_Date"  
                                   id="Log_Date" placeholder="请输入缺寝的日期！如218-12-01" >
                        </div>
                        <div class="form-group">
                            <label for="4">缺寝备注：</label>
                            <textarea  class="form-control " placeholder="这是帮助文字"  name="Log_Remark"
                                       id="Log_Remark"  style="height:200px;"> </textarea>
                        </div>
                        <button type="submit" class="btn btn-primary sotactive"  name="button" id="button">确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                         <a  class="btn btn-primary "  onClick="javascript:history.back(-1);">返回</a>
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





