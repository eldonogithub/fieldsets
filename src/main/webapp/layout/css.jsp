<%@ page language="java" contentType="text/css; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="screenUrl" value="/css/blueprint/screen.css" />
<c:url var="printUrl" value="/css/blueprint/print.css" />
<c:url var="ieUrl" value="/css/blueprint/ie.css" />
<c:if test="${vertical }">
	<style>
#header ul ul {
	margin: 0;
	padding: 0;
	list-style: none;
	width: 150px;
}

#header ul ul li {
	position: relative;
}

#header ul li ul {
	position: absolute;
	left: 149px;
	top: 0;
	display: none;
}

#header ul ul li a {
	display: block;
	text-decoration: none;
	color: #777;
	background: #fff;
	padding: 5px;
	border: 1px solid #ccc;
	border-bottom: 0;
}

#header ul ul {
	margin: 0;
	padding: 0;
	list-style: none;
	width: 150px;
	border-bottom: 1px solid #ccc;
}

#header ul li:hover ul {
	display: block;
}
</style>
</c:if>
<c:if test="${true }">
	<style>
/* CSSTerm.com Simple Horizontal DropDown CSS menu */
#header ul {
	background: #e6efc2;
	padding: 0;
	margin: 0;
	list-style-type: none;
	height: 30px;
}

#header ul li {
	float: left;
}

#header ul li a {
	padding: 9px 20px;
	display: block;
	color: #000000;
	text-decoration: none;
	font: 12px arial, verdana, sans-serif;
}

/* Submenu */
#header ul ul {
	position: absolute;
	left: -9999px;
	top: -9999px;
	list-style-type: none;
}

#header ul li:hover {
	position: relative;
	background: #5FD367;
}

#header ul li:hover ul {
	left: 0px;
	top: 30px;
	background: #5FD367;
	padding: 0px;
}

#header ul li:hover ul li a {
	padding: 5px;
	display: block;
	color: #ffffff;
	width: 168px;
	text-indent: 15px;
	background-color: #5FD367;
}

#header ul li:hover ul li a:hover {
	background: #005555;
}
</style>
</c:if>
<link rel="stylesheet" href="${screenUrl }" type="text/css"
	media="screen, projection">
<link rel="stylesheet" href="${printUrl }" type="text/css" media="print">
<!--[if lt IE 8]>
  <link rel="stylesheet" href="${ieUrl }" type="text/css" media="screen, projection">
<![endif]-->
