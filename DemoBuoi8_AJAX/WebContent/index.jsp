<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="js/jquery-1.6.2.js"></script>

<script>
	$(document).ready(function() {
		$('#btnDemo1').click(function() {
			$.ajax({
				type : "GET",
				url : "demo1",
				success : function(response) {
					$('#result1').text(response);
				}
			});
		});

		$('#btnDemo2').click(function() {
			var fullname = $('#fullname').val();
			$.ajax({
				type : "GET",
				url : "demo2",
				data : {
					fullName : fullname
				},
				success : function(response) {
					$('#result2').text(response);
				}
			});

		});
		$('#btnDemo3').click(function() {
			var num1 = $('#num1').val();
			var num2 = $('#num2').val();
			$.ajax({
				type : "GET",
				url : "demo3",
				data : {
					num1 : num1,
					num2 : num2
				},
				success : function(response) {
					$('#result3').text(response);
				}
			});

		});
		$('#btnDemo4').click(function() {

			$.ajax({
				type : "GET",
				url : "demo4",
				headers : {
					Accept : "application/json; charset=utf-8",
					"Content-Type" : "application/json; charset=utf-8"
				},
				success : function(response) {
					//part chuỗi về thành json
					var product = JSON.parse(response);
					var s = 'id :' + product.id;
					s += '<br>Name :' + product.name;
					s += '<br>Price :' + product.price;
					$('#result4').html(s);
				}
			});

		});

		$('#btnDemo5').click(function() {

			$.ajax({
				type : "GET",
				url : "demo5",
				headers : {
					Accept : "application/json; charset=utf-8",
					"Content-Type" : "application/json; charset=utf-8"
				},
				success : function(response) {
					var producs = JSON.parse(response);
					var s = '';
					for (var i = 0; i < producs.length; i++) {
						s += '<tr>';
						s += '<td>' +producs[i].id +'</td>';
						s += '<td>' +producs[i].name +'</td>';
						s += '<td>' +producs[i].price +'</td>';
						s += '</tr>';
					}
					$('#myTable tbody').html(s	);				}
			});

		});
	})
</script>

<title>Insert title here</title>
</head>
<body>

	<fieldset>
		<legend>GET</legend>
		<form action="">
			<input type="button" value="Get Demo 1" id="btnDemo1"><br />
			<span id="result1"></span>
		</form>
	</fieldset>

	<fieldset>
		<legend>Get used data</legend>
		<form action="">
			Full name <input type="text" value="Get Demo 1" id="fullname"><br />
			<input type="button" id="btnDemo2" value="Demo 2"><br> <span
				id="result2"></span>
		</form>
	</fieldset>
	<fieldset>
		<legend>Sum</legend>
		<form action="">
			Number 1<input type="text" value="" id="num1"><br /> Number
			2<input type="text" value="" id="num2"><br /> <input
				type="button" id="btnDemo3" value="Sum"><br> <span
				id="result3"></span>
		</form>
	</fieldset>

	<fieldset>
		<legend>Get Object</legend>
		<form action="">
			<input type="button" id="btnDemo4" value="Product info"><br>
			<span id="result4"></span>
		</form>
	</fieldset>

	<fieldset>
		<legend>Demo 5</legend>
		<form action="" id="myTable">
			<input type="button" id="btnDemo5" value="Product info"><br>
			<table border="1">
				<thead>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
				</thead>
				<tbody>

				</tbody>
			</table>
		</form>
	</fieldset>

</body>
</html>