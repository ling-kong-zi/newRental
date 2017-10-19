<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test</title>
</head>
<body>
<a href="javascript:history.go(-1)">返回上页</a>
<c:forEach items="${record }" var="rec">
	<div style="margin-left: 250px;margin-top: 100px;">
     		车名：${rec.car_name }<br><br>
     		${rec.price_day }元/天<br><br>
     		车牌号：${rec.plate_number }<br><br>
     		汽车排量：${rec.pailiang }（T）<br><br>
     		品牌：${rec.brand }<br><br><br>
			<a href="record!getId?record.id=${rec.id }" style="color: blue">现在就租车</a>
     	</div>
     	<div style="height:300px;margin-left: 600px; margin-top:-280px; width:5000"><img src="upload/${rec.img }" width="500" height="300"></div>
     		     	<div style="margin-top: 200px;"></div>
</c:forEach>
</body>

</html>