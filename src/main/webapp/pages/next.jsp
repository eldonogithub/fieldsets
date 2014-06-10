<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">Next Action</tiles:put>
	<tiles:put name="body" type="string">
		<h1>Next Action</h1>
		<html:form>
			<fieldset>
				<legend>Enter Name</legend>
				<html:text property="person.fname"></html:text>
				<html:text property="person.lname"></html:text>
			</fieldset>
			<html:submit>Submit</html:submit>
		</html:form>
		<%@ include file="table.jsp"%>
	</tiles:put>
</tiles:insert>
