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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
<h2>公寓管理员管理</h2>
<div class="wrapper  fadeInRight" style="padding: 0 10px;">
    <a href="TeacherAdd.jsp" class="btn btn-primary" style="height: 25px;margin: 5 0 2px -5px;padding: 3px 6px;border-radius: 0px;">添加公寓管理员</a>
</div>

<div class="gray-bg">
    <div class="animated fadeInRight">
     
        <div class="row">
            <div class="col-lg-12">
               
                <div class="ibox float-e-margins">
             
                <form name="form1" method="post" action="TeacherManager.action">
                    <div class="ibox-title">
                        <span class="year">查询</span>
                        <select class="select1" name="SearchRow" id="SearchRow">
                            <option value="Teacher_Name" selected="selected">姓名</option>
                            <option value="Teacher_Tel">电话</option>
                            <option value="Teacher_Username">用户名</option>
                        </select>
                        <input autocomplete="off" name="SearchKey"   id="SearchKey" type="text" class="" style="height: 25px;margin-left: 10px;">
                        <input   type="submit"  value="搜索" name="button" id="button" class="btn btn-primary" 
                        style="height: 25px;margin: 0 0 2px -5px;padding: 3px 6px;border-radius: 0px;">
                    </div>
                      </form>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" style="text-align: center"  >
                                <thead>
                                <tr>
                                   	<th width="20%">用户名</th>
                                    <th width="20%">姓名</th>
                                    <th width="20%">性别</th>
                                    <th width="20%">电话</th>
                                    <th width="20%">操作</th>
                                </tr>
                      <s:iterator id="aa" value="list">
                 	   <tr align="left">
                      <td height="25" align="left">${Teacher_Username}</td>
                      <td align="left">${Teacher_Name}</td>
                      <td>${Teacher_Sex}</td>
                      <td>${Teacher_Tel}</td>
                      
                      <td align="left"><a href="TeacherUpdate.action?Teacher_ID=${Teacher_ID}">修改</a> <a href="TeacherDel.action?Teacher_ID=${Teacher_ID}" onClick="return confirm('确定要删除该公寓管理员吗？')">删除</a></td>
                    </tr>
                  </s:iterator>
                                </thead>
                            </table>
                        </div>
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

