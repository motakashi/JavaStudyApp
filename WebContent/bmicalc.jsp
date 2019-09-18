<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String st_height = request.getParameter("height1");
	String st_weight = request.getParameter("weight1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI値結果</title>
</head>
<body>
<%
	double height, weight, bmi;
	height = Double.parseDouble(st_height);
	weight = Double.parseDouble(st_weight);
	height /= 100;

	bmi = weight / (height * height);

	out.println("あなたのBMIの計算結果は、" + bmi + "です。");
%>
</body>
</html>