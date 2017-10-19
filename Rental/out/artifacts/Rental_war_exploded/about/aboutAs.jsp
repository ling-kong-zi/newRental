<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aboutAs..jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/about.css">	
 <script type="text/javascript">
	 		function tanchu(a){
			    var ul=a.parentElement.children[1];
			    if(ul.style.display=="block"){
		           ul.style.display='none';
		        }else{
		           ul.style.display='block';
		        }
				return false;
			 }
	 </script>
  </head>
   
  <body>
   <jsp:include page="/head.jsp" />
  	
	<div class="conter">
    	<form id="form1">  
			<div class="left_bottom">
			<ul>  
			        <li><a href="about/intro.jsp" target="page">企业简介</a> 
			        </li>
			        </ul>  
			    <ul>  
			        <li><a href="" onclick="return tanchu(this);">企业文化</a>  
			                <ul class="show">  
			                    <li><a href="about/qiyelilian.jsp" target="page">企业理念</a></li>  
			                    <li><a>员工心声</a></li>  
			                </ul>  
			        </li>
			        </ul>  
			         <ul>  
			        <li><a href="" onclick="return tanchu(this);">新闻资讯</a>  
			                <ul class="show">  
			                    <li><a href="about/gongsibaodao.jsp" target="page">公司报道</a></li>  
			                    <li><a>媒体报道</a></li>  
			                    <li><a>电视报道</a></li>  
			                    <li><a>服务信息</a></li>  
			                </ul>  
			        </li>
			        </ul> 
			        <ul>  
			        <li><a href="about/fazhanlicheng.jsp" target="page">发展历程</a>  
			        </li>
			        </ul> 
			        <ul>  
			        <li><a href="about/partner.jsp" target="page">合作伙伴</a>  
			        </li>
			        </ul>  
			        <ul>  
			        <li><a href="about/touch.jsp" target="page">联系我们</a>  
			        </li>
			        </ul>  
			      </div>
			     </form> 
    </div>
    <!-- 进入方法 -->
    <div class="con_right" style="width: 77%;height: 600px;float: right; margin-top: -390px;">
    <iframe src="about/intro.jsp" name="page" width="100%" height="600px" frameborder="0" marginwidth="0" marginheight="0" ></iframe>
    </div>
    <!-- footer -->
    <jsp:include page="/foot.jsp" />
 </body>
</html>
