<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<center>
<br>
<form method="POST" action="caradder">
  <table>
  	 <tr><td>Araç bilgileri:</td></tr>
	 <tr><td> Marka</td><td>: <input type="text" name="marka" size="15"/></td></tr>
	 <tr><td> Model</td><td>: <input type="text" name="model" size="15"/></td></tr>
	 <tr><td> Yakit</td><td>: <input type="text" name="yakit" size="15"/></td></tr>
	 <tr><td> Fiyat</td><td>: <input type="text" name="fiyats" size="15"/>TL</td></tr>
	  <tr><td><input type="submit" value="Ekle" /></td>
	</table>
</form>
</div>
</center>
<jsp:include page="footer.jsp"/> 