package ca.blackperl.fieldsets.actions;

import org.junit.Test;

import servletunit.struts.MockStrutsTestCase;

public class PromptLoginTest extends MockStrutsTestCase {

	@Override
	protected void setUp() throws Exception {
		super.setUp();
	}
	
	@Test
	public void testPromptLogin() {
		
		setRequestPathInfo("/admin/index.do");
		
		// Now invoke action
		actionPerform();
		
		verifyForwardPath("/Welcome.do");
	}

}
