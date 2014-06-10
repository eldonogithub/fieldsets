package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;

public class LoginForm extends ActionForm {
	private Log log = LogFactory.getLog(LoginForm.class);
	
	private User user = new User();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
