<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<center>
<form method="POST" action="signup">
 <table>
	 <tr><td>E-mail</td><td>:<input type="text" name="user" size="5"/></td></tr>
	  <tr><td>Şifre</td><td>:<input type="password" name="pass" size="5" /></td></tr>
	  <tr><td><input type="submit" value="Kaydet" /></td><br>
	</table>
</form>
</center>
<jsp:include page="footer.jsp"/>