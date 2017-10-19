<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>home</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/home.css" rel="stylesheet" type="text/css"/>

<style>
.flexslider {
	margin: 0px auto 20px;
	position: relative;
	width: 1170px;
	height: 482px;
	overflow: hidden;
	zoom: 1;
}

.flexslider .jcarousel-skin-tango li {
	width: 1300px;
	height: 482px;
	margin-left:85px;
	margin-top: 10px;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(images/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-next:hover,
.flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity=50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li a {
	background: url(images/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li a.flex-active,
.flex-control-paging li.active a {
	background-position: 0 0;
}

.flexslider .jcarousel-skin-tango a img {
	width: 1290px;
	height: 482px;
	display: block;
}
.jcarousel-skin-tango .jcarousel-container-horizontal {
	width:911px;
	float:left;
	height:203px;
	padding-top:33px;
	padding-left:49px;
	overflow:hidden;
}
.jcarousel-skin-tango .jcarousel-clip {
	overflow:hidden;
}
.jcarousel-skin-tango .jcarousel-clip-horizontal {
	width:862px;
	padding-top:0px;
	height:168px;
}
.jcarousel-skin-tango .jcarousel-item {
	width:205px;
	height:168px;
}
.jcarousel-skin-tango .jcarousel-item-horizontal {
	margin-left:0;
	margin-right:15px;
}
.jcarousel-skin-tango .jcarousel-next-horizontal {
	position:absolute;
	top:0px;
	right:0px;
	width:50px;
	height:236px;
	cursor:pointer;
	background-image:url(../images/right-nav.png);
	background-repeat:no-repeat;
}
.jcarousel-skin-tango .jcarousel-prev-horizontal {
	position:absolute;
	top:0px;
	left:0px;
	width:50px;
	height:236px;
	cursor:pointer;
	background-image:url(../images/left-nav.png);
	background-repeat:no-repeat;
}

</style>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/slider.js"></script>
<script type="text/javascript">
$(function() {
	var bannerSlider = new Slider($('#banner_tabs'), {
		time: 2500,
		delay: 400,
		event: 'hover',
		auto: true,
		mode: 'fade',
		controller: $('#bannerCtrl'),
		activeControllerCls: 'active'
	});
	$('#banner_tabs .flex-prev').click(function() {
		bannerSlider.prev()
	});
	$('#banner_tabs .flex-next').click(function() {
		bannerSlider.next()
	});
})
</script>

  </head>
  
  <body>
      <!--Slider-->
    		<div id="banner_tabs" class="flexslider">
	<ul class="jcarousel-skin-tango" id="mycarousel">
		<li>
			<a  href="images/recentworks/1-big.jpg" rel="lightbox">
				<img src="images/slider/1.jpg"><span>&nbsp;</span>
			</a>
		</li>
		<li>
			<a href="images/recentworks/2-big.jpg" rel="lightbox">
				<img  src="images/slider/2.jpg"><span>&nbsp;</span>
			</a>
		</li>
		<li>
			<a href="images/recentworks/3-big.jpg" rel="lightbox">
				<img  src="images/slider/3.jpg"><span>&nbsp;</span>
			</a>
		</li>
	</ul>
	<ul class="flex-direction-nav">
		<li><a class="flex-prev" href="javascript:;">Previous</a></li>
		<li><a class="flex-next" href="javascript:;">Next</a></li>
	</ul>
	<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
		<li><a>1</a></li>
		<li><a>2</a></li>
		<li><a>2</a></li>
	</ol>
</div>

  </body>
</html>
