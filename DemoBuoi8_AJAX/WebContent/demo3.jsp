<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="js/jquery-1.6.2.js"></script>
<script src="js/jquery-ui-1.8.2.custom.js"></script>

<script>
	$(document).ready(function(){

		$('#categroy').change(function(){
			var categoryid = $('#categroy option:selected').val();//lay value cua option dang duoc chon

			$.ajax({
				type : "GET",
				url:"demo7",
				data:{categoryid :categoryid },
				success: function(response){
					var products = JSON.parse(response);
					var s= '';
					for (var i = 0; i < products.length; i++) {
						s+='<li>' +products[i].name + '</li>';
					}
					$('#result').html(s);
				}

				});
			
		});
		

		
	});
</script>

</head>
<body>
	<form action="">
		Category <select id="categroy">
			<option value="c1">Category 1</option>
			<option value="c2">Category 2</option>
			<option value="c3">Category 3</option>
		</select>
		<br>
		<ul id="result"></ul>
	</form>
</body>
</html>