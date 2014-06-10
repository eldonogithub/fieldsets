<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<tiles:insert page="/layout/base.jsp" flush="true">
    <tiles:put name="title" value="Tiles Example" />
    <tiles:put name="header" value="/layout/header.jsp" />
    <tiles:put name="menu" value="/menu.jsp" />
    <tiles:put name="body" value="/layout/body.jsp" />
    <tiles:put name="footer" value="/footer.jsp" />
</tiles:insert>