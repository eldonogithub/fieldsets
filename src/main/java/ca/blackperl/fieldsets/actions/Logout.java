package ca.blackperl.fieldsets.actions;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class Logout extends Action {

	private Log log = LogFactory.getLog(Logout.class);

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		log.debug("Logging out");
		Principal userPrincipal = request.getUserPrincipal();

		if (userPrincipal != null) {
			log.debug("logging out " + userPrincipal.getName());
		}
		
		HttpSession session = request.getSession(false);

		if ( session != null ) {
			log.debug("Invalidating session " + session.getId() );
			session.invalidate();
		}
		ActionForward inputForward = mapping.getInputForward();
		
		log.debug("InputForward: " + inputForward.getPath());
		log.debug("Forward: " + mapping.getForward() );
		log.debug("Input: " + mapping.getInput() );
		request.setAttribute("logout", true);
		return mapping.findForward("welcome");
	}
}
