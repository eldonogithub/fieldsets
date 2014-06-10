<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- Page Title --%>
<title><tiles:insert attribute="pageTitle" /></title>
<%-- CSS includes --%>
<tiles:useAttribute name="css" />
<c:forEach var="item" items="${css }">
	<tiles:insert name="${item }" />
</c:forEach>
<%-- jQuery scripts --%>
<script src="//code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<%-- Javascript includes --%>
<tiles:useAttribute name="javascript" />
<c:forEach var="item" items="${javascript }">
	<tiles:insert name="${item }" />
</c:forEach>
</head>
<body>
	<div class="container">
		<!-- Title -->
		<div class="span-24" id="banner">
			<tiles:insert attribute="banner" />
		</div>
		<!-- Header Left -->
		<div class="span-4" id="header-left">
			<tiles:insert attribute="header-left" />
		</div>
		<!-- Header -->
		<div class="span-16" id="header">
			<tiles:insert attribute="header" />
		</div>
		<!-- Header Right -->
		<div class="span-4 last" id="header-right">
			<tiles:insert attribute="header-right" />
		</div>
		<!-- Left -->
		<div class="span-4" id="body-left">
			<tiles:insert attribute="left" />
		</div>
		<!-- Body -->
		<div class="span-16" id="body">
			<tiles:insert attribute="body" />
		</div>
		<!-- Right -->
		<div class="span-4 last" id="body-right">
			<tiles:insert attribute="right" />
		</div>
		<tiles:useAttribute name="footer" />
		<c:forEach var="item" varStatus="itemStatus" items="${footer }">
			<!-- Footer -->
			<div class="span-24" id="footer${itemStatus.count }">
				<tiles:insert name="${item }" />
			</div>
		</c:forEach>
	</div>
</body>
</html>