<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Transactions</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Restrict date range</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  
  function checkTransactions() {
	    if (document.getElementById('deposit').checked) {
	    	document.getElementById('amount').style.visibility = 'visible'
	    	document.getElementById('datepicker').style.visibility = 'visible'
	    }
	    if (document.getElementById('withdraw').checked) {
	    	document.getElementById('amount').style.visibility = 'visible'
	    	document.getElementById('datepicker').style.visibility = 'visible'
	    }
  }
  $( function() {
	  $( '#datepicker' ).datepicker({ minDate: -0, maxDate: "+1M +10D" })
	
			});
		</script>
</head>
<body>
Account ID <input type="text" value="${accountid}" id="accountid" name ="accountid" disabled> <a href="AccountHome.jsp">Not this account?</a>
<br><br><br>
Account Balance <input type="text" value="${balance}"  id="accountbalance" name ="accountbalance" disabled>
<br><br><br>
Deposit <input type="radio" onclick="javascript:checkTransactions();" name="check" id="deposit" value="0"/>
			      
Withdraw <input type="radio" onclick="javascript:checkTransactions();" name="check" id="withdraw" value="1"/>
<br><br><br>


	<div id="amount" class="form-group" style="visibility: visible">
		Amount:<input type="text" class="required form-control" placeholder="Transaction Amount*"
			name="amount" id="amount" value="">
	</div>

	<div id="datepicker" class="form-group" style="visibility: visible" name="datepicker">
		Date:

	</div>
	
	 <form action ="Transaction" method="post">
	 <input type ="hidden" name ="accountid" id="accountid" value="${account.accountid}" />
	<input type="hidden" value="submit"  name="action"/>
	<input type="submit" value="submit" id="submit" />
	 </form>

</body>
</html>