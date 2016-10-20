<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function validateForm() {
	    var a = document.forms["AddAccountForm"]["name"].value;
	    var b = document.forms["AddAccountForm"]["email"].value;
	    var c = document.forms["AddAccountForm"]["password"].value;
	    var d = document.forms["AddAccountForm"]["phone"].value;
	    var score = scorePassword(c);
	    
	    if (a == null || a == "") {
	        alert("Name must be filled out");
	        return false;
	    }
	    if (b == null || b == "") {
	        alert("Email must be filled out");
	        return false;
	    }
	    if (!validateEmail(b)) {
	    	alert("Enter a valid email address");
	        return false;
	    }
	    if (c == null || c == "") {
	        alert("Password must be filled out");
	        return false;
	    }	    
	    if (score < 80){
	    	alert("Please enter a more secure password. Must include one Upercase, Lowercase, Number and Alpha Numeric Character");
	        return false;
	    }
	    if (d == null || d == "") {
	        alert("Phone must be filled out");
	        return false;
	    }
	}
	function validateEmail(email) {
	 	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  	return re.test(email);
	}
	function scorePassword(pass) {
	    var score = 0;
	    if (!pass)
	        return score;
	
	    // award every unique letter until 5 repetitions
	    var letters = new Object();
	    for (var i=0; i<pass.length; i++) {
	        letters[pass[i]] = (letters[pass[i]] || 0) + 1;
	        score += 5.0 / letters[pass[i]];
	    }
	
	    // bonus points for mixing it up
	    var variations = {
	        digits: /\d/.test(pass),
	        lower: /[a-z]/.test(pass),
	        upper: /[A-Z]/.test(pass),
	        nonWords: /\W/.test(pass),
	    }
	
	    variationCount = 0;
	    for (var check in variations) {
	        variationCount += (variations[check] == true) ? 1 : 0;
	    }
	    score += (variationCount - 1) * 10;
	
	    return parseInt(score);
	}
</script>
</head>
<body>
	<div>
		<form name="AddAccountForm" action="AddAccount" method="post" onsubmit="return validateForm()">
			Select Account Type
			</br>Savings Account: <input type = "radio" name = "accountType" onclick = \"getAnswer('Savings') value="Savings" checked>
			</br>Checking Account: <input type = "radio" name = "accountType" onclick = \"getAnswer('Checking') value="Checking">
			</br>Name: <input type="text" name="name"> 
			</br>Email: <input type="text" name="email"> 
			</br>Password: <input type="password" name="password"> 
			</br>Phone: <input type="text" name="phone"> 
			</br><input type="submit" value="Add">
		</form>
	</div>
</body>
</html>