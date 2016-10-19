<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	

	<table class="table table-bordered table-striped table-hover">
		<thead>
			<tr>
				<th>User Name</th>
				<th>Account Number</th>
				<th>Account Type</th>
				<th>Transact</th>
				<th>Activity</th>
				<th>Transfer</th>
			</tr>
		</thead>

		<tr>



			<c:forEach var="account" items="${accounts}">
				<tr>
					<td><c:out value="${account.user.username}" /></td>
					<td><c:out value="${account.accountid}" /></td>
					<td><c:out value="${account.accounttype}" /></td>
					
					
					<c:if test="${account.status == 1 }"> </c:if>
					<td> <form action="AccountServlet" method="post"> 
							<input type="hidden" name="Productid" value="<c:out value="${account.accountid}"/>"> 
							<input type="hidden" name="action" value="Close">
							 <input type="submit" value="Close"> 
							 </form> </td>
						<c:if test="${account.close == 0 }"> </c:if>
						<td><form action="AccountServlet" method="post">
							<input type="submit" name="Reopen" value="Reopen">
							<input type="hidden" name="action" value="Reopen">
							</form></td>
						
				</tr>

			</c:forEach>
	</table>


	
</body>
</html>