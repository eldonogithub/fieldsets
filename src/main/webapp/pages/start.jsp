<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">Start Action</tiles:put>
	<tiles:put type="String" name="body">
		<h1>Start Action</h1>
		<bean:write name="startForm" />
		<html:form>
			<fieldset>
				<legend>Enter Name</legend>
				<html:text property="person.fname"></html:text>
				<html:text property="person.lname"></html:text>
			</fieldset>
			<html:submit>Submit</html:submit>
		</html:form>
	</tiles:put>
</tiles:insert>
