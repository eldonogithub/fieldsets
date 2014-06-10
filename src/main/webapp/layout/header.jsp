<%@ page contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url">this is a url</c:url>

<a href="$url">Test URL</a>

<c:url var="logout" value="/logout.do"></c:url>
<a href="${logout }">Logout</a>


<html:link page="/fullname.do">Full Name</html:link>
<html:link page="/somepage.do">Tiles Page</html:link>
<html:link page="/startAction.do">Start Page</html:link>
<html:link page="/startAction.do">
	<html:param name="id">123456</html:param>
	Start Page
	</html:link>
<html:link page="/pages/purchase.jsp">Purchase</html:link>
<html:link page="/admin/fullname.do">Admin Full Name</html:link>
<html:link page="/admin/startAction.do">Admin Start Page</html:link>
<html:link page="/admin/startAction.do">
	<html:param name="id">123456</html:param>
	Admin Start Page
	</html:link>
<html:link page="/monitoring">Monitoring</html:link>