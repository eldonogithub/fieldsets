package ca.blackperl.fieldsets.actions;

import org.junit.Test;

import servletunit.struts.MockStrutsTestCase;

public class FailedLoginTest extends MockStrutsTestCase {

	@Test
	public void testFailedLogin() {
		
		setRequestPathInfo("/admin/index.do");
		
		// Now invoke action
		actionPerform();
		
		verifyForwardPath("/Welcome.do");
	}

}
