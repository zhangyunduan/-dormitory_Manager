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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>学生公寓管理系统</title>
    <base href="<%=basePath%>">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/table.js"></script>
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.TB_TeacherID.value)){  
   alert("请选择要添加的管理员！"); 
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
<div class="wrapper  fadeInRight" style="padding: 5 10px;">
<h3>添加公寓管理员</h3>
</div>
<div class="gray-bg">
    <div class="animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
            
                <div class="ibox float-e-margins">
					   <form name="form1" method="post" action="TBAddSave.action">
                    <div class="ibox-title">
                        <span class="year">管理员：</span>
                     
                        <select class="select1"  name="TB_TeacherID"  id="TB_TeacherID" >
                            <option value="" selected="selected" >请选择</option>
                            <s:iterator value="teacherlist">
                        <option value="${Teacher_ID}">${Teacher_Name}</option>
                        </s:iterator>
                        </select>
                        <label for="TB_BuildingID"></label>
                      		<input name="TB_BuildingID" type="hidden" class="noshow" id="TB_BuildingID" value="${Building_ID}">
                        	<input   type="submit"  value="添加" name="button" id="button" class="btn btn-primary"
                                 style="height: 25px;margin: 0 0 2px -5px;padding: 3px 6px;border-radius: 0px;">
                    </div>
                    		
					</form>
                    <div class="ibox-content">
                        <table  class=" table table-striped table-bordered table-hover"  >
                            <thead>
                            <tr>
                                <th width="20%">姓名</th>
                                <th width="20%">性别</th>
                                <th width="20%">电话</th>
                                <th width="20%">用户名</th>
                                <th width="20%">操作</th>
                            </tr>
                            <s:iterator id="aa" value="list">
                    <tr align="left">
                      <td height="25" align="left">${Teacher_Name}</td>
                      <td>${Teacher_Sex}</td>
                      <td>${Teacher_Tel}</td>
                      <td align="left">${Teacher_Username}</td>
                      <td align="left"><a href="TBDel.action?TB_ID=${TB_ID}&Building_ID=${TB_BuildingID}" onClick="return confirm('确定要将该管理员从该公寓移除吗？')">移除</a></td>
                    </tr>
                  </s:iterator>
                            </thead>
                        </table>
                        <a href="BuildingManager.action" class="btn btn-primary " >返回</a>
                    </div>
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

<!-- Flot -->
<script src="js/plugins/flot/jquery.flot.js"></script>
<script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="js/plugins/flot/jquery.flot.spline.js"></script>
<script src="js/plugins/flot/jquery.flot.resize.js"></script>
<script src="js/plugins/flot/jquery.flot.pie.js"></script>

<!-- Peity -->
<script src="js/plugins/peity/jquery.peity.min.js"></script>
<script src="js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- GITTER -->
<script src="js/plugins/gritter/jquery.gritter.min.js"></script>

<!-- Sparkline -->
<script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

<!-- Sparkline demo data  -->
<script src="js/demo/sparkline-demo.js"></script>

<!-- ChartJS-->
<script src="js/plugins/chartJs/Chart.min.js"></script>

<!-- Toastr -->
<script src="js/plugins/toastr/toastr.min.js"></script>


</body>
</html>
