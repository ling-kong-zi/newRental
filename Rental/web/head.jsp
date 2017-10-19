<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">

<title>header</title>
<link type="text/css" rel="stylesheet" href="css/style.css">

<style type="text/css">
body {
	font-family: 幼圆;
}
#login {
	position: absolute;
	display: none;
	width: 280px;
	height: 180px;
	background-color: #ffffff;
	z-index: 10000;
	top: 40%;
	left: 40%;

}
#panel {
	margin-top: 10px;
}
#logi {
	position: absolute;
	display: none;
	width: 350px;
	height: 370px;
	background-color: #ffffff;
	z-index: 10000;
	top: 20%;
	left: 40%;
}
#pane {
	margin-top: 10px;
}
/*returnTop*/
p#back-to-top{
    position:fixed;
    display:none;
    bottom:100px;
    right:80px;
}
p#back-to-top a{
    text-align:center;
    text-decoration:none;
    color:#d1d1d1;
    display:block;
    width:64px;
    /*使用CSS3中的transition属性给跳转链接中的文字添加渐变效果*/
    -moz-transition:color 1s;
    -webkit-transition:color 1s;
    -o-transition:color 1s;
}
p#back-to-top a:hover{
    color:#979797;
}
p#back-to-top a span{
    background:transparent url(/static/imgs/sprite.png?1202) no-repeat -25px -290px;
    border-radius:6px;
    display:block;
    height:200px;
    width:56px;
    margin-bottom:5px;
    /*使用CSS3中的transition属性给<span>标签背景颜色添加渐变效果*/
    -moz-transition:background 1s;
    -webkit-transition:background 1s;
    -o-transition:background 1s;
}
#back-to-top a:hover span{
    background:transparent url(/static/imgs/sprite.png?1202) no-repeat -25px -290px;
}

</style>
<script type="text/javascript" src="js/backtop.js"></script>
<script type="text/javascript">
		function login_submit(){
				var username = document.getElementById("user.name").value;
				var password = document.getElementById("user.pwd").value;
				if(username==""){
					alert("请输入用户名");
					return false;
				}else if(password==""){
					alert("请输入密码");
					return false;
				}else{
					document.forms[0].submit();
					return true;
				}
				
			}
</script> 
<script type="text/javascript">
	function register_submit(){
		var tel=document.getElementById("customer.tel").value;
		var idCard=document.getElementById("customer.idCard").value;
		var addr=document.getElementById("customer.addr").value;
		var cast_name=document.getElementById("customer.cast_name").value;
		var password=document.getElementById("customer.password").value;
		var repassword=document.getElementById("customer.repassword").value;
		if(tel==""){
				alert("请输入电话号码");
				return false;
		}else if(idCard==""){
			alert("请输入身份证号");
				return false;
		}else if(addr==""){
			alert("请输入地址");
				return false;
		}else if(cast_name==""){
			alert("请输入用户名");
				return false;
		}else if(password==""){
			alert("请输入密码");
				return false;
		}else if(repassword==""){
			alert("请输入确认密码");
				return false;
		}else if(password!=repassword){
			alert("两次密码不一致");
			return false;
		}else{
			document.forms[0].submit();
			return true;
			
		}
	}
</script>
<script type="text/javascript">
	function showLogin() {
		login.style.display = "block";
	}
	function showForbid() {
		forbid.style.width = document.body.scrollWidth;
		forbid.style.height = document.body.scrollHeight;
		forbid.style.visibility = "invisible";
	}
	function showLogi() {
		logi.style.display = "block";
	}
	function showForbi() {
		forbi.style.width = document.body.scrollWidth;
		forbi.style.height = document.body.scrollHeight;
		forbi.style.visibility = "invisible";

	}
</script>
<script src="http://ajax.microsoft.com/ajax/jQuery/jquery-1.7.2.min.js"></script>
<script>
$(function(){
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
        $(function () {
            $(window).scroll(function(){
                if ($(window).scrollTop()>100){
                    $("#back-to-top").fadeIn(1500);
                }
                else
                {
                    $("#back-to-top").fadeOut(1500);
                }
            });

            //当点击跳转链接后，回到页面顶部位置

            $("#back-to-top").click(function(){
                $('body,html').animate({scrollTop:0},1000);
                return false;
            });
        });
    });
</script>

<style type="text/css">
/*returnTop*/
p#back-to-top{
    position:fixed;
    display:none;
    bottom:100px;
    right:80px;
}
p#back-to-top a{
    text-align:center;
    text-decoration:none;
    color:#d1d1d1;
    display:block;
    width:64px;
    /*使用CSS3中的transition属性给跳转链接中的文字添加渐变效果*/
    -moz-transition:color 1s;
    -webkit-transition:color 1s;
    -o-transition:color 1s;
}
p#back-to-top a:hover{
    color:#979797;
}
p#back-to-top a span{
    background:transparent url(/static/imgs/sprite.png?1202) no-repeat -25px -290px;
    border-radius:6px;
    display:block;
    height:64px;
    width:56px;
    margin-bottom:5px;
    /*使用CSS3中的transition属性给<span>标签背景颜色添加渐变效果*/
    -moz-transition:background 1s;
    -webkit-transition:background 1s;
    -o-transition:background 1s;
}
#back-to-top a:hover span{
    background:transparent url(/static/imgs/sprite.png?1202) no-repeat -25px -290px;
}


</style>
</head>

<body style="margin: 0 auto;" bgcolor="#F3EFF8">
     <p id="back-to-top"><a href="#top"><span style="color:red;width:100px">返回顶部</span></a></p>

	<div class="header">
		<div id="forbi" style="position: absolute; visibility: hidden; z-index: 10000; background-color: #CCCCCC; filter:Alpha(Opacity=60,style=0);"></div>
		<c:if test="${empty sessionScope.user}">
			 <a href="javascript:showLogin();showForbid();void(0);" style="float: right;margin-top: 20px;margin-right: 10px;">管理员登录</a>
		</c:if>
		<c:if test="${empty sessionScope.customer}">
			 <a	href="javascript:showLogi();showForbi();void(0);" style="float: right;margin-top: 20px;margin-right: 15px;">用户注册</a>
		</c:if>
		<div id="logi">
				<div style="height: 40px;background-color: #DCF2F9;text-align: center;line-height: 40px;">
				<a	href="javascript:logi.style.display = 'none';forbi.style.visibility = 'hidden'; void(0);" style="float: right;width: 25px;height: 25px;"><img src="images/colse.png" width="25px" height="25px" alt="COLSE"/></a>
				<span style="color: #8DD14A;font-size: 30px;font-weight: bold;font-style: oblique;font-variant: small-caps;">欢迎注册用户账号</span>
				</div>
			<div id="pane">
				<form method="post" action="customer!execute">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer.tel" id="customer.tel" size="20" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer.idCard" id="customer.idCard" size="20" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer.addr" id="customer.addr" size="20" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="customer.cast_name" id="customer.cast_name" size="20" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="password" name="customer.password" id="customer.password" size="21" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;确认密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="password" name="customer.password" id="customer.repassword" size="21" /><br /><br />
		
			<div style="position: relative;"><button id="btnReg" onclick="return register_submit()" style="width:200px;height: 35px;background-color: #80DB45;position: absolute;margin-left: 90px;">马上注册</button> </div>
		</form>
		
		<br />
		<br />
		</div></div>
		<div id="forbid" style="position: absolute; visibility: hidden; z-index: 10000; background-color: #CCCCCC; filter:Alpha(Opacity=60,style=0);"></div>
		<div style="float: right;padding-right: 30px;">
		<c:choose>
			<c:when test="${not empty sessionScope.customer }">
				<a>${customer.cast_name }</a>
				<a href="user!zhuxiao">注销</a>
				
			</c:when>
			<c:when test="${not empty sessionScope.user }">
				<a>${user.name }</a>
				<a href="user!zhuxiao">注销</a>
				
			</c:when>
			<c:when test="${not empty sessionScope.user and not empty sessionScope.customer}">
				<a>${customer.cast_name }</a>
				<a href="user!zhuxiao">注销</a>
			</c:when>
			<c:when test="${empty sessionScope.user and not empty sessionScope.customer}">
				<a>${customer.cast_name }</a>
				<a href="user!zhuxiao">注销</a>
			</c:when>
			<c:otherwise>
				
			</c:otherwise>
		</c:choose>

		</div>
		<div id="login">
		<div style="height: 40px;background-color: #DCF2F9;text-align: center;">
	<a	href="javascript:login.style.display = 'none';forbid.style.visibility = 'hidden'; void(0);" style="float: right;width: 25px;height: 25px;">
		<img src="images/colse.png" width="25px" height="25px" alt="COLSE"/></a>
		<span style="color: #8DD14A;font-size:30px;font-weight: bold;font-style: oblique;">欢迎登录</span>
		</div>
			<div id="panel">
			<form method="post" action="user!execute">
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名&nbsp;</label><input name="user.name" id="user.name" type="text" size="20" /><br /><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;</label><input name="user.pwd" id="user.pwd" type="password" size="20" /><br /><br />
			<button onclick="return login_submit()" style="width:180px;height: 35px;background-color: #80DB45;position: absolute;margin-left: 50px;"> 立即登录</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br/>
			<br/>
			</form>
			</div>
		</div>

	<div class="logo">
			<a href="index.jsp"><img src="images/logo.gif" width="100px"
				height="100px" alt="Car Rental" /></a>
		</div>
		
		<div id="funct-head" style="margin-left: 220px;width: 1000px;">
			<ul class="group">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="carRentalServer.jsp">租车服务</a></li>
				<li><a href="message!showAll">留言板</a></li>
				<li><a href="record!page">车型预览</a></li>
				<li><a href="discount!showContent">最新优惠</a></li>
				<li><a href="about/aboutAs.jsp">关于我们</a></li>
				<li><a href="user!test">系统管理</a></li>
			</ul>
	
		</div>
	</div>
</body>
</html>
