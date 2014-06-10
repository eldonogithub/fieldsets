<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %>

<logic:present name="nextForm" >
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Value</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>First Name</td>
				<td><bean:write name="nextForm" property="person.fname" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><bean:write name="nextForm" property="person.lname" /></td>
			</tr>
		</tbody>
	</table>
</logic:present>
