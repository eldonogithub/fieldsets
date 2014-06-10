package ca.blackperl.fieldsets.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import ca.blackperl.fieldsets.NextForm;

public class NextAction extends Action {
	private Log log = LogFactory.getLog(NextAction.class);
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		NextForm nextForm = (NextForm) form;
		if ( nextForm.getFlag() ) {
			log.debug("Flag is set");
		}
		log.debug(nextForm);
		
		return mapping.getInputForward();
	}
}
