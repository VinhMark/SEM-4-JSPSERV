<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.6.2.js"></script>
<script src="js/jquery-ui-1.8.2.custom.js"></script>
<link href="css/themes/base/jquery.ui.all.css" rel="stylesheet" type="text/css"> 

<script>
	$(document).ready(function(){

		$('#productName').autocomplete({
			source:'demo6'
		});
		
	});	
</script>


</head>
<body>
<form action="">
	Name : <input type="text" id="productName">
</form>
</body>
</html>