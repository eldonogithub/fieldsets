package ca.blackperl.fieldsets.actions;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import ca.blackperl.fieldsets.LoginForm;
import ca.blackperl.fieldsets.User;

public class PromptLogin extends Action {
	
	private Log log = LogFactory.getLog(PromptLogin.class);
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		log.info("login invoked");
		
		return mapping.getInputForward();
	}
}
