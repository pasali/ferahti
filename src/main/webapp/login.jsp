<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<center>
<br>
<form method="POST" action="login">
  <table>
	 <tr><td>E-mail</td><td>:<input type="text" name="user" size="5"/></td></tr>
	  <tr><td>Şifre</td><td>:<input type="password" name="pass" size="5" /></td></tr>
	  <tr><td><input type="submit" value="Giriş" /></td><td><a href="signup.jsp">kayit ol</a></td></tr>
	</table>
</form>
${data}
</center>
<jsp:include page="footer.jsp"/>