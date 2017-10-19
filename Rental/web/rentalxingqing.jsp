<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rentalxingqing.jsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	p{
		text-indent: 2em;
		line-height: 2em;
	}
</style>
  </head>
  
  <body>
  <jsp:include page="/head.jsp" />
  		<div style="margin: auto;background: #ffffff;width: 680px">
  			<img alt="" src="images/zjxq.png" style="margin-top: 50px"><br>
  			<p>日租用于短期的自驾出游或商务接待、商旅出行等活动。以24小时为基本租用期。租车自驾价格体系仿效机票价格体系，
  			根据预定的提前天数、租期的天数、提车的城市门店、用车的时间段的不同，享受不同的折扣，“特价日租金最低仅需58元起
  			，更有顺风车仅需1元起”。</p><h4>越提前预定，折扣越大；租期越长，折扣越大。</h4>
  			 基本计费费项目有：

<p>日租金/天------根据车型不同，会员级别不同，标价不同，价格在138～598元/天；</p>
<p>基本保险费/天------根据车型不同，标价不同，价格在40～70 元/天；</p>
<p>服务费/次------20元/次；超时收费------超出24小时且超出部分小于4小时内的收费，根据车型不同，价格在40～80元/小时。</p>
   <p>注：由于节假日等因素，具体折扣后的日租金将稍微有所差异，精确的价格请操作网上预订页面或致电0817-7888987</p>
  			<center><a href="record!page"><button style="background-color: #739F18;color:#ffffff">立即租车</button></a></center>
  			<img alt="" src="images/y.png"><a href="javascript:history.go(-1)">返回上一页</a>
  		</div>
   <jsp:include page="/foot.jsp" />

  </body>
</html>
