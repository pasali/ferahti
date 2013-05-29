<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style/style.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/jquery-1.9.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/style.css" rel="stylesheet">
<title>Ferahti</title>

</head>
<body>
	<div id="main">
		<div id="header" style="background-image: url('images/cars.png');"></div>
		<div></div>
		<div id="cont">
			<div id="cssmenu" style="float:left;">
				<ul>
					<c:if test="${not empty kullanici}">
						<li><span id="user">Hoşgeldin, <b>${kullanici}</b></span></li>
					</c:if>
					<li><a href='index.jsp'><span>Anasayfa</span></a></li>
					
					
					
					<c:if test="${empty kullanici}">
						<li><a href="login.jsp">Giriş yap</a></li>
					</c:if>
					<c:if test="${not empty kullanici}">
						<li><a href='freecar.jsp'><span>Araç Bırak</span></a></li>
						<li><a href="rentcar.jsp">Araç Seç</a></li>
						<li><a href="logout">Çıkış yap</a></li>
					</c:if>
				</ul>
			</div>

			<div id="contmain">