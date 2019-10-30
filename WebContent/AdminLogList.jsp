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

<body class="gray-bg">
<div class="gray-bg">
    <div class="animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h3>学生缺寝记录
                            <small></small>
                        </h3>
                    </div>
                    <div class="ibox-content">
                        <table  class=" table table-striped table-bordered table-hover"  >
                            <thead>
                            <tr>
                                <td width="15%">学号</td>
                                <th width="10%">姓名</th>
                                <th width="10%">性别</th>
                                <th width="10%">班级</th>
                                <th width="10%">公寓楼</th>
                                <th width="10%">寝室号</th>
                                <th width="10%">缺寝日期</th>
                                <th width="15%">备注（原因）</th>
                                <th width="10%">公寓管理员</th>
                            </tr>
                            	<s:iterator id="aa" value="list">
                            	<tr align="left">
                            	<td height="25" align="left">${Student_Username}</td>
                            	<td>${Student_Name}</td>
                            	<td>${Student_Sex}</td>
                            	<td>${Student_Class}</td>
                            	<td>${Building_Name}</td>
                            	<td>${Domitory_Name}</td>
                            	<td>${Log_Date}</td>
                            	<td>${Log_Remark}</td>
                            	<td>${Teacher_Name}</td>
                      			</tr>
                  				</s:iterator>
                            </thead>
                        </table>
                        <a href="AdminLog.action" class="btn btn-primary "  onClick="javascript:history.back(-1);">返回</a>
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
