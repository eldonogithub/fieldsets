<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">Contact Info</tiles:put>
	<tiles:put type="String" name="body">
		<html:form styleId="fullname" action="/processFieldSet">
			<p class="required">* Required</p>
			<div class="fieldset">
				<fieldset>
					<legend>Enter Name</legend>
					<ol>
						<li><label for="person.fname">First Name</label> <input
							name="person.fname" type="text" placeholder="E.g. Eldon"></input></li>
						<li><label for="person.lname">Last Name</label> <input
							name="person.lname" type="text" placeholder="E.g. Olmstead"></li>
					</ol>
				</fieldset>
			</div>
			<c:url var="submitImage" value="/icons/tick.png" />
			<button type="submit" class="button positive">
				<img src="${submitImage }" alt="" /> Submit
			</button>
		</html:form>
	</tiles:put>
</tiles:insert>
