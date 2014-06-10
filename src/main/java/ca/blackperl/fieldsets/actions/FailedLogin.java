package ca.blackperl.fieldsets.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;

public class FailedLogin extends Action {

	private static final String property = "ca.blackperl";
	private Log log = LogFactory.getLog(FailedLogin.class);
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		log.info("login failed");
		
		ActionMessages errors = new ActionMessages();
		
		String key = "ca.blackperl.loginFailed.message";
		
		ActionMessage message = new ActionMessage( key );
		errors.add(property, message );
		
		addErrors(request, errors );
		
		return mapping.getInputForward();
	}
}
