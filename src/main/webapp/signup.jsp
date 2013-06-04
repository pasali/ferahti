<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>


<script type="text/javascript">
function validateForm()
{
	var x=document.forms["sign_up_form"]["ad"].value;
	 
	if (x==null || x=="")
	{
		alert("Ad boş bırakılamaz!");
		return false;
	}
	
	
	var x=document.forms["sign_up_form"]["soyad"].value;
	
	if (x==null || x=="")
	{
		alert("Soyad boş bırakılmaz!");
		return false;
	}
	var x=document.forms["sign_up_form"]["user"].value;
	var atpos =x.indexOf("@");
	var dotpos =x.lastIndexOf(".");
	
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	{
		alert("E-mail geçerli değil!");
		return false;
	}
	var x=document.forms["sign_up_form"]["pass"].value;
	var y=document.forms["sign_up_form"]["re_pass"].value;
	var z=x.length;
	if((x!=y || !x))
	{
		alert("Şifreler eşleşmiyor!");
		return false;
	}
}
</script>


<form class="form-horizontal well" method="POST" onsubmit = "return validateForm()" action="signup" accept-charset="UTF-8" name="sign_up_form">
					<fieldset>
						<div class="control-group">
							<div class="controls">
								Ad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ad" size="5"  />
							
							</div>
						</div>
						
						<div class="control-group">
							<div class="controls">
								Soyad:&nbsp;<input type="text" name="soyad" size="5"/>
							
							</div>
						</div>
						
						<div class="control-group">
							<div class="controls">
								E-mail:&nbsp;<input type="text" name="user" size="5" />
							
							</div>
						</div>

						<div class="control-group">
							
							<div class="controls">
								Şifre: &nbsp;&nbsp;&nbsp;<input type="password"  name="pass" size="5">

							</div>
						</div>
						<div class="control-group">
							
							<div class="controls">
							Tekrar: <input type="password"  name="re_pass" size="5">

							</div>
						</div>
						<center>
						<div class="control-group">
							<div class="controls">
							<button type="submit"  id="submit" class="btn btn-primary button-loading" data-loading-text="Loading...">Kayıt</button>	
							</div></center>
						</div>
					</fieldset>
				</form>


<jsp:include page="footer.jsp"/>