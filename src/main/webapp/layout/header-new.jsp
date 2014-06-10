<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<c:url var="logout" value="/logout.do"></c:url>
<ul id="mainNav">
	<li><html:link page="/">Home</html:link>
	<li><a>User</a>
		<ul>
			<li><html:link page="/fullname.do">Full Name</html:link></li>
			<li><html:link page="/somepage.do">Tiles Page</html:link></li>
			<li><html:link page="/startAction.do">Start Page</html:link></li>
			<li><html:link page="/startAction.do">
					<html:param name="id">123456</html:param>
	Start Page
	</html:link></li>
			<li><html:link page="/pages/purchase.jsp">Purchase</html:link></li>
		</ul></li>
	<li><a>Admin</a>
		<ul>
			<li><html:link page="/admin/fullname.do">Full Name</html:link>
			</li>
			<li><html:link page="/admin/startAction.do">Start Page</html:link>
			</li>
			<li><html:link page="/admin/startAction.do">
					<html:param name="id">123456</html:param>
	Start Page
	</html:link></li>
			<li><html:link page="/monitoring">Monitoring</html:link></li>
			<li><html:link page="/admin/purchase.jsp">Purchase</html:link></li>
		</ul></li>
	<li><a href="${logout }">Logout</a></li>
</ul>