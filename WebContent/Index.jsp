<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
<body>
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html">
                            <span class="clear">
                             <span class="block m-t-xs"> <b class="font-bold" style="font-size: 22px">学生公寓管理系统</b></span>
                            </span>
                        </a>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li id="index.html" >
                    <a href="#" data-toggle="tab"><i class="fa fa-th-large"></i>
                        <span class="nav-label">后台首页</span>
                    </a>
                </li>
                <%if(session.getAttribute("type").toString().equals("1")){%>
                <li id="TeacherManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-bar-chart-o"></i>
                        <span class="nav-label">公寓管理员管理</span>
                    </a>
                </li>
                <li id="BuildingManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-pie-chart"></i>
                        <span class="nav-label">公寓楼管理</span>
                    </a>
                </li>
                <li id="DomitoryManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-flask"></i>
                        <span class="nav-label">寝室管理</span>
                    </a>
                </li>
				
				<li id="StudentManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-envelope"></i>
                        <span class="nav-label">学生管理 </span>
                    </a>
                </li>
			
				
				  <li id="StudentRZ.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-edit"></i> <span class="nav-label">学生入住登记</span>
                        <!--<span class="fa arrow"></span>-->
                    </a>
                </li>
		

                <li id=" StudentTH.jsp">
                    <a href="StudentTH.action" data-toggle="tab"><i class="fa fa-desktop"></i>
                        <span class="nav-label">学生寝室调换</span>
                    </a>
                </li>
                <li id="StudentQC.jsp">
                    <a href="StudentQC.action" data-toggle="tab">
                        <i class="fa fa-diamond"></i>
                        <span class="nav-label">学生离校登记</span>
                    </a>
                </li>
                <li id="OutList.action">
                    <a href="#" data-toggle="tab">
                        <i class="fa fa-cc"></i>
                        <span class="nav-label">离校记录</span>
                    </a>
                </li>
                <li id="AdminLog.action">
                    <a href="#" data-toggle="tab">
                        <i class="fa fa-yelp"></i>
                        <span class="nav-label">学生缺寝记录</span>
                    </a>
                </li>
                 <li id="DamageList.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-bar-chart-o"></i>
                        <span class="nav-label">报修管理</span>
                    </a>
                </li>
                <%}%>
                <%if(session.getAttribute("type").toString().equals("2")){%>
                   <li id="DomitoryManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-flask"></i>
                        <span class="nav-label">寝室管理</span>
                    </a>
                </li>
				
				<li id="StudentManager.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-envelope"></i>
                        <span class="nav-label">学生管理 </span>
                    </a>
                </li>
			
				
				  <li id="StudentRZ.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-edit"></i> <span class="nav-label">学生入住登记</span>
                        <!--<span class="fa arrow"></span>-->
                    </a>
                </li>
		

                <li id=" StudentTH.jsp">
                    <a href="StudentTH.action" data-toggle="tab"><i class="fa fa-desktop"></i>
                        <span class="nav-label">学生寝室调换</span>
                    </a>
                </li>
                <li id="StudentQC.jsp">
                    <a href="StudentQC.action" data-toggle="tab">
                        <i class="fa fa-diamond"></i>
                        <span class="nav-label">学生离校登记</span>
                    </a>
                </li>
                <li id="OutList.action">
                    <a href="#" data-toggle="tab">
                        <i class="fa fa-cc"></i>
                        <span class="nav-label">离校记录</span>
                    </a>
                </li>
                
                <li id="MyStudent.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-envelope"></i>
                        <span class="nav-label">学生缺寝登记 </span>
                    </a>
                </li>
                <li id="MyLog.action">
                    <a href="#" data-toggle="tab">
                        <i class="fa fa-yelp"></i>
                        <span class="nav-label">学生缺寝记录</span>
                    </a>
                </li>
				<li id="DamageList.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-bar-chart-o"></i>
                        <span class="nav-label">报修管理</span>
                    </a>
                </li>
                <%}%>
                <%if(session.getAttribute("type").toString().equals("3")){%>
                <li id="StudentLog.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-edit"></i> <span class="nav-label">我的缺寝记录</span>
                        <!--<span class="fa arrow"></span>-->
                    </a>
                </li>
                <li id="MyDamageList.action">
                    <a href="#" data-toggle="tab"><i class="fa fa-bar-chart-o"></i>
                        <span class="nav-label">我的报修</span>
                    </a>
                </li>
               
                <%}%>
                <!-- <li id="PasswordUpdate.jsp">
                    <a href="PasswordUpdate.jsp" data-toggle="tab">
                        <i class="fa fa-gears"></i>
                        <span class="nav-label">修改密码</span>
                        <!--<span class="fa arrow"></span>-->
                    </a>
                </li>
                
               
                    
            </ul>
        </div>
    </nav>
    <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0px">
                <div class="navbar-header">
                    <!--页面收缩功能-->
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary ">
                        <i class="fa fa-bars"></i>
                    </a>
                    <form role="search" class="navbar-form-custom" action="search_results.html">
                    </form>
                </div>
                
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <div class="dropdown" style="color: #888888">
                            <a class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"
                               style="padding: 0;min-height: 0;background-color: #f3f3f4;border: none;">
                                系统选项
                                <span class="caret">...</span>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" style="background-color:#f3f3f4 ">
                                <li><a href="PasswordUpdate.jsp">修改密码</a></li>
                                <li><a href="Login.jsp">退出</a></li>

                            </ul>
                        </div>
                    </li>
                </ul>

            </nav>
        </div>
        <div class="animated fadeInRight">
            <iframe id="menuFrame" width="100%" height="550px" frameborder="0" marginwidth="0"
                    marginheight="0"></iframe>
        </div>
    </div>

    
    
    
    
    
    
    <div class="footer">
        <div style="text-align: center">
            <!--<p>技术支持：©2018 数惠万峰大数据（贵州）有限公司</p>-->
            <p>技术支持：@1425046292</p>
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
<script>
    $(function () {

        setTimeout(function () {
            toastr.options = {
                closeButton: true,
                progressBar: true,
                showMethod: 'slideDown',
                timeOut: 1000
            };
            toastr.success('学生公寓管理系统', '欢迎登陆');
        }, 1000);
        goUrl("index.html");
        $('#side-menu').on('click', 'li', function () {
            $(this).addClass('active').siblings().removeClass('active');
            //$('#side-menu li:eq(' + index + ')').addClass('active').siblings().removeClass('active');
            goUrl($(this).attr("id"));
        });
    })

    function goUrl(url) {
        $("#menuFrame").attr("src", url);
    }
</script>
</body>
</html>