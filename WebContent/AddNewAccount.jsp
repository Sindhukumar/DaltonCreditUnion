<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="AddAccount" method="post">
			Select Account Type
			</br>Savings Account: <input type = "radio" name = "accountType" onclick = \"getAnswer('Savings') value="Savings">
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