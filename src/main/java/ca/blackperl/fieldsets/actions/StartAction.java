package ca.blackperl.fieldsets.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import ca.blackperl.fieldsets.StartForm;

public class StartAction extends Action {

	private Log log = LogFactory.getLog(StartAction.class);
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		StartForm startForm = (StartForm) form;

		startForm.setFlag(true);
		
		log.debug(startForm);
		
		return mapping.findForward("nextAction");
	}
}
