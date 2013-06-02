<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>

<form class="form-horizontal well" method="POST" action="caradder">
					<fieldset>
						<div class="control-group">
							<div class="controls">
								Marka:&nbsp;<input type="text" name="marka" size="5"/>
							
							</div>
						</div>

						<div class="control-group">
							
							<div class="controls">
								Plaka: &nbsp;<input type="text"  name="plaka" size="5">

							</div>
						</div>

						<div class="control-group">
							<div class="controls">

							<button type="submit" id="submit" class="btn btn-primary button-loading" data-loading-text="Loading...">Ekle</button>
							</div>
						</div>
					</fieldset>
				</form>
<jsp:include page="footer.jsp"/> 