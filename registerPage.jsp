<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' type='text/css' />
<title>Registration</title>
<script type="text/javascript">
	function validate() {
		var first_name = /^[a-z A-Z]+$/;
		var last_name = /^[a-z A-Z]+$/;
		var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
		var city_valid = /^[a-z A-Z]+$/;
		var password_valid = /^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/;

		var firstName = document.getElementById("firstName");
		var lastName = document.getElementById("lastName");
		var email = document.getElementById("email");
		var gender = document.getElementById("gender");
		var birthday = document.getElementById("birthday");
		var city = document.getElementById("city");
		var country = document.getElementById("country");
		var password = document.getElementById("password");

		if (!first_name.test(firstName.value) || firstName.value == "") {
			alert("Enter your First name, alphabets only..!");
			firstName.focus();
			return false;
		}
		if (!last_name.test(lastName.value) || lastName.value == "") {
			alert("Enter your Last name, alphabets only..!");
			lastName.focus();
			return false;
		}
		if (!email_valid.test(email.value) || email.value == "") {
			alert("Enter valid email..!");
			email.focus();
			return false;
		}

		/* if (gender.value == null || gender.value == "") {
			alert("Select your gender..!");
			gender.focus();
			return false;
		} */

		if ((form2.gender[0].checked == false)
				&& (form2.gender[1].checked == false)
				&& (form2.gender[2].checked == false)) {
			alert("Please select your Gender..!");
			return false;
		}

		if (birthday.value == null || birthday.value == "") {
			alert("Select your DOB..!");
			birthday.focus();
			return false;
		}
		if (!city_valid.test(city.value) || city.value == "") {
			alert("Enter valid city name..!");
			city.focus();
			return false;
		}
		if (country.value == null || country.value == "") {
			alert("Select your country..!");
			country.focus();
			return false;
		}
		if (!password_valid.test(password.value) || password.value == "") {
			alert("Password must be 6 to 12 and allowed character are !@#$%&*()<> ");
			password.focus();
			return false;
		}
		return;

	}
</script>


</head>
<body>
	<div class="parent">
		<div class="container">

			<div>
				<p style="color: green">
					<%
					if (request.getAttribute("successMsg") != null) {
						out.println(request.getAttribute("successMsg"));
					}
					%>
				</p>
			</div>
			<h4 align="center" class="l2">Sign up</h4>
			<form name="form2" method="post" onsubmit="return validate()"
				action="registeringDatabase.jsp">
				<div>
					<label class="l1"><b>First name:</b> </label> <input type="text"
						placeholder="First Name" name="firstName" id="firstName">
				</div>
				<br>
				<div>
					<label class="l1"><b>Last name:</b> </label> <input type="text"
						placeholder="Last Name" name="lastName" id="lastName">
				</div>
				<br>
				<div>
					<label class="l1"><b>Email address: </b></label> <input type="text"
						placeholder="Enter your e-mail" name="email" id="email"> <br>
				</div>
				<br>
				<div class="l1">
					<label><b> Gender: </b></label> <label> <input type="radio"
						name="gender" value="Male" id="gender"> <span> <b>Male</b>
					</span>
					</label> <label> <input type="radio" name="gender" value="Female"
						id="gender"> <span><b>Female</b> </span>
					</label> <label> <input type="radio" name="gender" value="Other"
						id="gender"> <span> <b>Other</b>
					</span></label>
				</div>
				<br>
				<div>
					<label for="birthday" class="l1"><b>Date of birth:</b></label> <input
						type="date" id="birthday" name="birthday" min='1950-01-01'
						max='2010-12-30'>
				</div>
				<br>
				<div>
					<label class="l1"><b>City:</b></label> <input type="text"
						name="city" id="city">
				</div>
				<br>
				<div>
					<label class="l1"><b>Country:</b></label> <select name="country"
						id="country">
						<option value="">Select</option>
						<option value="Afganistan">Afganistan</option>
						<option value="India">India</option>
						<option value="Pakistan">Pakistan</option>
						<option value="Russia">Russia</option>
						<option value="UAE">UAE</option>
						<option value="USA">USA</option>
						<option value="Uzbekistan">Uzbekistan</option>
					</select>
				</div>
				<br>
				<div>
					<label class="l1"><b>Create password:</b></label> <input
						type="password" name="password" id="password">
				</div>
				<br>
				<div>
					<input type="submit" name="login2" value="Register"> <input
						type="reset" value="Reset" name="Reset" />
				</div>
				<br> <small class="l1"><b>By clicking the
						'Register' button, you confirm that you accept our <br> Terms
						of use and Privacy Policy
				</b>. </small>
			</form>
			<br>
			<div class="l1">
				<b>Already have an account? <a href="login.jsp" class="l1">Log
						In | </a> <a href="home.jsp" class="l1">Home</a></b>
			</div>

		</div>
	</div>
</body>
</html>