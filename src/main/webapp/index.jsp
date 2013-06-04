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
	liste = a.AraclariGetir();
	request.setAttribute("liste", liste);
%>
<center>
<h2>Kayıtlı olan araçlar:</h2>
<div style= "float:right;height:300px;width:560px;">		
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
                  
                </tr>
               </c:forEach>
              </tbody>
              
            </table>


</div>
</center>
<jsp:include page="footer.jsp" />