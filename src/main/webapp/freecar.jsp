<%@page import="java.util.ArrayList"%>
<%@page import="handler.AraclarHandler"%>
<%@page import="main.Araclar"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<%
	AraclarHandler a = new AraclarHandler();
	ArrayList<Araclar> liste = new ArrayList<Araclar>();
	String user = (String)request.getSession().getAttribute("kullanici");
	liste = a.KullanimdakiAraclariGetir(user);
	request.setAttribute("liste", liste);
%>

<center>
	<h2>Kullanımda olan araçlar:</h2>
	<div style="float: right; height: 300px; width: 560px;">


		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>Marka</th>
					<th>Kullanici</th>
					<th>Plaka</th>
					<th>Durum</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${liste}" var="arac">
					<tr>
						<td>${arac.id}</td>
						<td>${arac.marka}</td>
						<td>${arac.kullanici}</td>
						<td>${arac.plaka}</td>
						<td>${arac.durum}</td>
						<form action="aracbirak" method="post">
						<td><input type="checkbox" name="data" value="${arac.id}" /></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>

		
			
			<button type="submit" id="submit" class="btn btn-primary button-loading" data-loading-text="Loading..."> Bırak </button>
			<form><br>
			${bilgi}
	</div>
</center>
<jsp:include page="footer.jsp" />