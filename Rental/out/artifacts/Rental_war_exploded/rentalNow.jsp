<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
  
    <base href="<%=basePath%>">
    
    <title>rental</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body bgcolor="#F3EFF8" >
    	<jsp:include page="head.jsp" />
    	<div>
    	<div style="float: left;margin-left:130px; margin-top: 5px;">
			<img src="upload/${record.img }" width="500" height="300"/>
  		</div>
  <div style="float: left;margin-left:720px;margin-top: -300px;">
  
  
   	<form method="post" action="rental!dengji">
   	<input name="rental.record.id" type="hidden" value="${record.id }">
  <center>
  <h3>租赁登记</h3>
  <table>
   	<tr>
   		<td>用户名</td>
   		<td><input type="text" name="rental.customer.cast_name"  value="${customer.cast_name }" readonly="readonly" /></td>
   	</tr>
   	<tr>
   		<td>车名</td>
   		<td><input type="text" name="rental.record.car_name" value="${record.car_name }" readonly="readonly" /></td>
   	</tr>
   	<tr>
   		<td>单价</td>
   		<td><input type="text" name="rental.totalMomey" value="${record.price_day }"  readonly="readonly" /></td>
   	</tr>
   	<tr>
   		<td>归还时间</td>
   		<td><input type="text" name="rental.return_date" value="2014/03/15 05:06" id="datetimepicker" ></td>
   	</tr>	 
  </table>   	<br><button onclick="tijiao()">提交</button>
  <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="javascript:history.go(-1)">back</a>
  
	</center>
		</form></div>
</div><div style="height:30px;margin-top: 300px; "></div>
		  	<jsp:include page="foot.jsp" />
		
  </body>
<script src="js/jquery.js"></script>
<script src="js/jquery.datetimepicker.js"></script>
<script>

$('#datetimepicker').datetimepicker();
$('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});
$('#datetimepicker1').datetimepicker({
	datepicker:false,
	step:5
});
</script>
<script type="text/javascript">
function tijiao(){
	alert("提交成功！我们会及时联系您，并送货上门的哦^-^");
}
</script>
</html>
