<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<form class="form-horizontal well" method="POST" action="login">
	<fieldset>
		<div class="control-group">
			<div class="controls">
				E-mail:&nbsp;<input type="text" name="user" size="5" />

			</div>
		</div>

		<div class="control-group">

			<div class="controls">
				Şifre: &nbsp;&nbsp;&nbsp;<input type="password" name="pass" size="5">

			</div>
		</div>

		<div class="control-group">
			<div class="controls">

				<button type="submit" id="submit"
					class="btn btn-primary button-loading"
					data-loading-text="Loading...">Giriş Yap</button>
				<a class="btn" href="signup.jsp">Kayıt Ol</a><br> ${data }
			</div>
		</div>
	</fieldset>
</form>

<jsp:include page="footer.jsp" />