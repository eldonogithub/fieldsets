<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">Login</tiles:put>
	<tiles:put type="String" name="body">
		<form action="j_security_check" method="post">
			<div class="fieldset">
				<fieldset>
					<legend>Enter Credentials</legend>
					<html:errors />
					<table>
						<tbody>
							<tr>
								<td><label for="j_username">User Name</label></td>
								<td><input name="j_username" type="text"
									placeholder="E.g. Eldon"></td>
							</tr>
							<tr>
								<td><label for="j_password">Password</label></td>
								<td><input name="j_password" type="password"
									placeholder="E.g. s3cr3t"></td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</div>
			<c:url var="submitImage" value="/icons/tick.png" />
			<button type="submit" class="button positive">
				<img src="${submitImage }" alt="" /> Submit
			</button>
		</form>
	</tiles:put>
</tiles:insert>