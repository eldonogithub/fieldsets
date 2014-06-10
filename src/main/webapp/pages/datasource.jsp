<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datasources</title>
<style type="text/css">
.datagrid {
	display: inline-block;
}

.datagrid table {
	border-collapse: collapse;
	text-align: left;
}

.datagrid {
	font: normal 12px/150% Verdana, Arial, Helvetica, sans-serif;
	background: #fff;
	overflow: hidden;
	border: 1px solid #652299;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
}

.datagrid table td,.datagrid table th {
	padding: 3px 10px;
}

.datagrid table thead th {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #652299
		), color-stop(1, #4D1A75));
	background: -moz-linear-gradient(center top, #652299 5%, #4D1A75 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#652299',
		endColorstr='#4D1A75');
	background-color: #652299;
	color: #FFFFFF;
	font-size: 15px;
	font-weight: bold;
	border-left: 1px solid #714399;
}

.datagrid table thead th:first-child {
	border: none;
}

.datagrid table tbody td {
	color: #4D1A75;
	border-left: 1px solid #E7BDFF;
	font-size: 12px;
	font-weight: normal;
}

.datagrid table tbody .alt td {
	background: #F4E3FF;
	color: #4D1A75;
}

.datagrid table tbody td:first-child {
	border-left: none;
}

.datagrid table tbody tr:last-child td {
	border-bottom: none;
}

.datagrid table tfoot td div {
	border-top: 1px solid #652299;
	background: #F4E3FF;
}

.datagrid table tfoot td {
	padding: 0;
	font-size: 12px
}

.datagrid table tfoot td div {
	padding: 2px;
}

.datagrid table tfoot td ul {
	margin: 0;
	padding: 0;
	list-style: none;
	text-align: right;
}

.datagrid table tfoot  li {
	display: inline;
}

.datagrid table tfoot li a {
	text-decoration: none;
	display: inline-block;
	padding: 2px 8px;
	margin: 1px;
	color: #FFFFFF;
	border: 1px solid #652299;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #652299
		), color-stop(1, #4D1A75));
	background: -moz-linear-gradient(center top, #652299 5%, #4D1A75 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#652299',
		endColorstr='#4D1A75');
	background-color: #652299;
}

.datagrid table tfoot ul.active,.datagrid table tfoot ul a:hover {
	text-decoration: none;
	border-color: #4D1A75;
	color: #FFFFFF;
	background: none;
	background-color: #652299;
}

div.dhtmlx_window_active,div.dhx_modal_cover_dv {
	position: fixed !important;
}
</style>
</head>
<body>
	<div class="datagrid">
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Value</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>hasInitialContextFactoryBuilder</td>
					<td>${requestScope.hasInitialContextFactoryBuilder }</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>