<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>

<form class="form-horizontal well" method="POST" action="signup">
					<fieldset>
						<div class="control-group">
							<div class="controls">
								E-mail:&nbsp;<input type="text" name="user" size="5"/>
							
							</div>
						</div>

						<div class="control-group">
							
							<div class="controls">
								Şifre: &nbsp;&nbsp;&nbsp;<input type="password"  name="pass" size="5">

							</div>
						</div>

						<div class="control-group">
							<div class="controls">

							<button type="submit" id="submit" class="btn btn-primary button-loading" data-loading-text="Loading...">Kayıt</button>	
							</div>
						</div>
					</fieldset>
				</form>


<jsp:include page="footer.jsp"/>