package ca.blackperl.context;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.catalina.LifecycleEvent;
import org.apache.catalina.LifecycleListener;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class FieldsetsListener implements LifecycleListener,
		ServletContextListener, HttpSessionListener, ServletContextAttributeListener,
		ServletRequestListener,
		ServletRequestAttributeListener,
		HttpSessionAttributeListener {
	private Log log = LogFactory.getLog(FieldsetsListener.class);
	
	public FieldsetsListener() {
		log.debug("created listener");
	}

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		log.debug("sessionCreated " + se);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		log.debug("sessionDestroyed " + se);
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		log.debug("contextInitialized " + sce);
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		log.debug("contextDestroyed " + sce);
	}

	@Override
	public void lifecycleEvent(LifecycleEvent event) {
		log.debug("lifecycleEvent " + event);
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		log.debug("attributeAdded " + se.getName() );
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		log.debug("attributeRemoved " + se.getName() + " " + se );
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		log.debug("attributeReplaced " + se );
	}

	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
		log.debug("attributeAdded " + srae);
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
		log.debug("attributeRemoved " + srae );
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
		log.debug("attributeReplaced " + srae );
	}

	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		log.debug("requestDestroyed " + sre );
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		log.debug("requestInitialized " + sre );
	}

	@Override
	public void attributeAdded(ServletContextAttributeEvent scab) {
		log.debug("attributeAdded " + scab.getName() );
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scab) {
		log.debug("attributeRemoved " + scab );
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scab) {
		log.debug("attributeReplaced " + scab );
	}
}
