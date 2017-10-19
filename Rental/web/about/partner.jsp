<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>touch</title>
    
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
font-size:30;
font-weight: bolder;
}
img{
	margin-right: 9px;
	margin-bottom: 3px;
}
</style>
  </head>
  
  <body>
    <p>银行</p>
    <a href="http://www.hxb.com.cn/home/cn/"><img src="images/hx.jpg"/></a>
    <a href="http://www.bankcomm.com/BankCommSite/default.shtml"><img src="images/jt.jpg"/></a>
    <a href="http://www.boc.cn/"><img src="images/zg.jpg"/></a>
    <a href="http://www.cebbank.com/"><img src="images/zggd.png"/></a>
    <a href="http://www.ccb.com/"><img src="images/zgjs.jpg"/></a>
    <a href="http://www.cmbc.com.cn/"><img src="images/zgms.jpg"/></a>
    <a href="http://www.abchina.com/"><img src="images/zgny.jpg"/></a>
    <a href="http://www.abchina.com/"><img src="images/zgxh.jpg"/></a>
    <a href="http://www.cmbchina.com/"><img src="images/zs.png"/></a><br>
   <p>航空</p>
    <a href="http://www.ceair.com/"><img src="images/hkdf.png"/></a>
    <a href="http://www.ceair.com/"><img src="images/hkhl.png"/></a>
    <a href="http://ffp.airchina.com.cn/cn/index.html"><img src="images/hkp.png"/></a>
    <a href="http://www.scal.com.cn/Web"><img src="images/hksc.png"/></a>
    <a href="http://www.shandongair.com.cn/"><img src="images/hksd.png"/></a><br>
<p>商旅</p>
<a href="http://www.12580.com/"><img src="images/sl1.png"/></a>
<a href="http://www.cits.cn/"><img src="images/slgj.png"/></a>
<a href="http://www.ly.com/"><img src="images/tc.jpg"/></a>
<a href="http://www.ctrip.com/"><img src="images/xc.jpg"/></a><br>
<p>生活支付</p>
<a href="https://www.tenpay.com/v2/"><img src="images/shcft.png"/></a>
<a href="https://www.alipay.com/"><img src="images/shzf.png"/></a><br>
<p>酒店</p>
<a href="http://www.gloriahotels.com/"><img src="images/jd1.png"/></a>
<a href="http://www.jinlinghotels.com/CN/"><img src="images/jd2.png"/></a><br>
<p>会所</p>
<a href="http://www.missionhillschina.com/zh-CN/"><img src="images/hs1.png"/></a>
<img src="images/hs3.png"/>
  </body>
</html>
