<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">
		<bean:message key="welcome.title" />
	</tiles:put>
	<c:if test="${logout }">
		<tiles:putList name="javascript">
			<tiles:add type="page" value="/layout/logout.jsp" />
		</tiles:putList>
	</c:if>
	<tiles:put type="String" name="body">
		<logic:notPresent name="org.apache.struts.action.MESSAGE"
			scope="application">
			<font color="red"> ERROR: Application resources not loaded --
				check servlet container logs for error messages. </font>
		</logic:notPresent>

		<h3>
			<bean:message key="welcome.heading" />${pageContext.request.userPrincipal }
		</h3>
		<p>
			<bean:message key="welcome.message" />
		</p>

	</tiles:put>
</tiles:insert>
