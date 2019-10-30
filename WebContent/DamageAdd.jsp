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
	   if(isNull(form1.Damage_Date.value)){  
	   alert("请输入损坏时间！"); 
	   return false;
	   }
	   if(isNull(form1.Damage_wup.value)){  
		   alert("请输入损坏物品！"); 
		   return false;
		   }
	   if(isNull(form1.Damage_Remark.value)){  
		   alert("请输入损坏原因！"); 
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
                    <h3>新增报修
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
                    <form name="form1" method="post" action="DamageAddSave.action" onSubmit="return mycheck()"  class="ng-pristine ng-valid" >
                        <div class="form-group">
                              <s:iterator id="aa" value="list">
                      <input type="hidden" class="form-control "   name= "Damage_DomitoryID" value=${Domitory_ID	} 
                                       id="Damage_DomitoryID"   >
                                       <div class="form-group">
                                <label for="3">学号：</label>
                                <input type="text" class="form-control " name="Damage_Student_Username"  value=${Student_Username	} 
                                       id="Damage_Student_Username" readonly="readonly" >	
                            </div>
                                </s:iterator>
                            
                            <label for="exampleInputEmail1">损坏物品：</label>
                            <input type="text" class="form-control " name="Damage_wup"
                                   id="Damage_wup" placeholder="请输入损坏的物品"  autocomplete="off" >
                        </div>
                        <div class="form-group">
                            <label for="1">损坏原因：</label>
                            <input type="text" class="form-control " name="Damage_Remark"
                                   id="Damage_Remark" placeholder="请输入损坏的原因"  autocomplete="off" >
                        </div>
                        <div class="form-group">
                            <label for="2">损坏时间：</label>
                            <input size="50" type="text" class="form-control" name="Damage_Date"
                                   id="Damage_Date" placeholder="请输入损坏的时间，列如：2015-08-12" autocomplete="off" >
                        </div>
                        <button name="button" id="button" type="submit" class="btn btn-primary sotactive" >确定</button>  &nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-primary " >重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="MyDamageList.action" class="btn btn-primary " >返回</a>
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
