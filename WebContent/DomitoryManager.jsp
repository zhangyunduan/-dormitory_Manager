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
<h3>寝室管理</h3>
<div class="wrapper  fadeInRight" style="padding: 5 10px;">
    <a href="DomitoryAdd.action" class="btn btn-primary"
       style="height: 25px;margin: 5 0 2px -px;padding: 3px 6px;border-radius: 0px;">添加寝室</a>
</div>
<div class="gray-bg">
    <div class="animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
					 <form name="form1" method="post" action="DomitoryManager.action">
                    <div class="ibox-title">
                        <span class="year">查询：</span>
                        <select class="select1"  name="Domitory_BuildingID" id="Domitory_BuildingID">
                            <option value="" selected="selected">全部公寓楼</option>
                              <s:iterator value="buildinglist">
                      <option value="${Building_ID}">${Building_Name}</option>
                      </s:iterator>
                        </select>
                        <select class="select1" name="SearchRow" id="SearchRow">
                            <option value="Domitory_Name" selected="selected">寝室号</option>
                            <option value="Domitory_Tel">电话</option>
                        </select>
                        <!--<span class="year">名称：</span>-->
                        <input  name="SearchKey"  id="SearchKey" autocomplete="off" type="text" 
                        				class="" style="height: 25px;margin-left: 10px;">
                        <input   type="submit"  value="查询" name="button" id="button" class="btn btn-primary"
                                 style="height: 25px;margin: 0 0 2px -5px;padding: 3px 6px;border-radius: 0px;">
                    </div>
                    </form>
                    <div class="ibox-content">
                        <table  class=" table table-striped table-bordered table-hover"  >
                            <thead>
                            <tr>
                                <th width="16%">公寓楼</th>
                                <th width="16%">寝室号</th>
                                <th width="16%">寝室类型</th>
                                <th width="16%">应住人数</th>
                                <th width="16%">电话</th>
                                <th width="20%">操作</th>
                            </tr>
                               <s:iterator id="aa" value="list">
                    <tr align="left">
                      <td height="25" align="left">${Building_Name}</td>
                      <td>${Domitory_Name}</td>
                      <td>${Domitory_Type}</td>
                      <td align="left">${Domitory_Number}</td>
                      <td align="left">${Domitory_Tel}</td>
                      <td align="left"><a href="DomitoryUpdate.action?Domitory_ID=${Domitory_ID}">修改</a> <a href="DomitoryDel.action?Domitory_ID=${Domitory_ID}" onClick="return confirm('确定要删除该寝室吗？')">删除</a></td>
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
