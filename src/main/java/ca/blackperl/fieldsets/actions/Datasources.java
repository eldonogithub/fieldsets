package ca.blackperl.fieldsets.actions;

import javax.naming.spi.InitialContextFactoryBuilder;
import javax.naming.spi.NamingManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class Datasources extends Action {
	private Log log = LogFactory.getLog(Datasources.class);

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		request.setAttribute("hasInitialContextFactoryBuilder", NamingManager.hasInitialContextFactoryBuilder());
		
		InitialContextFactoryBuilder builder = new DataSourceContext();
		NamingManager.setInitialContextFactoryBuilder(builder);
		
		return mapping.getInputForward();
	}
}
