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
    <title>校园宿舍管理系统</title>
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
                    <!--<div class="wrapper  fadeInRight" style="padding: 5 10px;">-->
                        <!--<a href="#" class="btn btn-primary"-->
                           <!--style="height: 25px;margin: 5 0 2px -px;padding: 3px 6px;border-radius: 0px;">添加学生</a>-->
                    <!--</div>-->
                    <form name="form1" method="post" action="MyStudentList.action">
                    <div class="ibox-title">
                        <span class="year">查询：</span>
                        <select class="select1" name="Domitory_ID" id="Domitory_ID">
                            <option value="" selected="selected">全部寝室</option>
                            <s:iterator  value="domitorylist">
                        	<option value="${Domitory_ID}">${Domitory_Name}</option>
                        	</s:iterator>
                        </select>
                        <select class="select1" name="SearchRow" id="SearchRow">
                            <option value="Student_Name" >姓名</option>
                            <option value="Student_Username">学号</option>
                            <option value="Student_Class">班级</option>
                        </select>
                        <!--<span class="year">名称：</span>-->
                        <input name="SearchKey" id="SearchKey" autocomplete="off" type="text" class="" style="height: 25px;margin-left: 10px;">
                        <input   type="submit"  value="查询" name="button" id="button" class="btn btn-primary"
                                 style="height: 25px;margin: 0 0 2px -5px;padding: 3px 6px;border-radius: 0px;">
                         <input name="Building_ID" type="hidden" class="noshow" id="Building_ID" value="${Building_ID}">
                    </div>
                    </form>
                    <div class="ibox-content">
                        <table  class=" table table-striped table-bordered table-hover"  >
                            <thead>
                            <tr>
                            	<th width="10%">公寓楼</th>
                                <th width="10%">寝室号</th>
                                <th width="10%">学号</th>
                                <th width="10%">姓名</th>
                                <th width="10%">性别</th>
                                <th width="10%">班级</th>
                                <th width="10%">寝室类型</th>
                                <th width="10%">寝室人数</th>
                                <th width="10%">寝室电话</th>
                                <th width="10%">操作</th>
                            </tr>
                            <s:iterator id="aa" value="list">
                    		<tr align="left">
                      		<td height="25" align="left">${Building_Name}</td>
                      		<td>${Domitory_Name}</td>
                      		<td>${Student_Username}</td>
                      		<td>${Student_Name}</td>
                      		<td>${Student_Sex}</td>
                      		<td>${Student_Class}</td>
                      		<td>${Domitory_Type}</td>
                      		<td>${Domitory_Number}</td>
                      		<td>${Domitory_Tel}</td>
                      		<td align="left"><a href="LogAdd.action?Student_ID=${Student_ID}">缺寝登记</a></td>
                    		</tr>
                  			</s:iterator>
                            </thead>
                        </table>
                        <a href="MyStudent.action" class="btn btn-primary " >返回</a>
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
