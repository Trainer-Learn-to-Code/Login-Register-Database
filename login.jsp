<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script type="text/javascript">
	function validateForm() {
		var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
		var password = document.form1.password;
		var email = document.getElementById("emaill");
		if (!email_valid.test(email.value) || email.value == "") {
			window.alert("please enter your email..");
			email.focus();
			return false;
		}
		if (password.value == null || password.value == "") {
			window.alert("please enter your password..");
			password.focus();
			return false;
		}

	}
</script>


</head>
<body>
	<div class="parent">

		<div id="formcontent">
			<h2>Login</h2>
			<p class="error">
				<%
				if (request.getAttribute("errorMsg") != null) {

					out.println(request.getAttribute("errorMsg"));
				}
				%>
			</p>
			<form id="content" name="form1" onsubmit="return validateForm()"
				action="emailAndPassword.jsp">
				<b>E-mail: </b><input type="text"
					style="width: 100px; height: 20px;" name="email"
					placeholder="e-mail" id="emaill"><br> <b>Password:</b><input
					type="password" style="width: 100px; height: 20px;" name="password"
					placeholder="password"><br> <br> <input
					type="submit" value="login" name="login1">

			</form>
			<br>
			<div id="formFooter">
				<b><a class="link" href="registerPage.jsp">Sign up |</a> <a
					href="home.jsp" class="link">Home |</a><a
					href="forgotPassword.html" class="link"> Forgot password?</a></b>
			</div>
		</div>

	</div>

</body>
</html>