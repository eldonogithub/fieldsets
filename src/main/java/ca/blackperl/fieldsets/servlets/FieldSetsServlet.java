package ca.blackperl.fieldsets.servlets;

import java.io.IOException;
import java.util.Arrays;

import javax.management.MBeanServer;
import javax.management.ObjectName;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Container;
import org.apache.catalina.ContainerServlet;
import org.apache.catalina.Context;
import org.apache.catalina.Engine;
import org.apache.catalina.Host;
import org.apache.catalina.Manager;
import org.apache.catalina.Server;
import org.apache.catalina.Service;
import org.apache.catalina.Wrapper;
import org.apache.catalina.connector.Connector;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.tomcat.util.modeler.Registry;

public class FieldSetsServlet extends HttpServlet implements ContainerServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Log log = LogFactory.getLog(FieldSetsServlet.class);

	private Connector[] connectors;

	private Container container;

	private Context context;

	private Engine engine;

	private Host host;

	private Manager manager;

	private MBeanServer mBeanServer;

	private String name;

	private ObjectName oname;

	private Service service;

	private Wrapper wrapper;
	private Server server;
	private Context managerContext;
	private Connector httpConnector;

	@Override
	public void init() throws ServletException {
		log.info("Initialized");
	}

	@Override
	public void destroy() {
		log.info("Destroyed");
		super.destroy();
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if (wrapper == null) {
			context = null;
			host = null;
			oname = null;
		} else {
			context = (Context) wrapper.getParent();
			if (log.isInfoEnabled()) {
				log.info(context.getClass().getName());
			}
			host = (Host) context.getParent();
			Container[] findChildren = (Container[]) host.findChildren();
			for (Container context : findChildren) {
				String path = ((Context) context).getPath();
				log.debug(path);
				if ("/manager".equals(path)) {
					if (log.isDebugEnabled()) {
						log.debug("found " + path);
					}
					managerContext = (Context) context;
				}
			}
			if (log.isInfoEnabled()) {
				log.info(host.getClass().getName());
			}
			engine = (Engine) host.getParent();

			if (log.isInfoEnabled()) {
				log.info(engine.getClass().getName());
			}
			service = engine.getService();
			server = service.getServer();

			log.info(service.getClass().getName());

			connectors = service.findConnectors();

			for (Connector connector : connectors) {
				String scheme = connector.getScheme();
				String protocol = connector.getProtocol();
				log.debug(scheme + " : " + protocol + ": "
						+ connector.getClass().getName());
				if ("HTTP/1.1".equals(protocol)) {
					httpConnector = connector;
					log.debug("found HTTP/1.1 connector");
				}
			}
			container = service.getContainer();

			name = engine.getName() + ":type=Deployer,host=" + host.getName();
			try {
				oname = new ObjectName(name);
			} catch (Exception e) {
				log(name, e);
			}

		}
		request.getSession().setAttribute("fsm", this);
		if (log.isInfoEnabled()) {
			log.info(this);
			log.info(request.getServerName());
			log.info(request.getServerPort());
		}
		request.getRequestDispatcher("/pages/fieldsetManager.jsp").forward(
				request, response);
	}

	public Server getServer() {
		return server;
	}

	public void setServer(Server server) {
		this.server = server;
	}

	public Connector getHttpConnector() {
		return httpConnector;
	}

	public void setHttpConnector(Connector httpConnector) {
		this.httpConnector = httpConnector;
	}

	public Connector[] getConnectors() {
		return connectors;
	}

	public Container getContainer() {
		return container;
	}

	public Context getContext() {
		return context;
	}

	public Engine getEngine() {
		return engine;
	}

	public Host getHost() {
		return host;
	}

	public Manager getManager() {
		return manager;
	}

	public MBeanServer getmBeanServer() {
		return mBeanServer;
	}

	public String getName() {
		return name;
	}

	public ObjectName getOname() {
		return oname;
	}

	public Service getService() {
		return service;
	}

	@Override
	public Wrapper getWrapper() {

		return wrapper;
	}

	public void setConnectors(Connector[] connectors) {
		this.connectors = connectors;
	}

	public void setContainer(Container container) {
		this.container = container;
	}

	public void setContext(Context context) {
		this.context = context;
	}

	public void setEngine(Engine engine) {
		this.engine = engine;
	}

	public void setHost(Host host) {
		this.host = host;
	}

	public void setManager(Manager manager) {
		this.manager = manager;
	}

	public void setmBeanServer(MBeanServer mBeanServer) {
		this.mBeanServer = mBeanServer;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setOname(ObjectName oname) {
		this.oname = oname;
	}

	public void setService(Service service) {
		this.service = service;
	}

	@Override
	public void setWrapper(Wrapper wrapper) {
		if (log.isInfoEnabled()) {
			log.info("setWrapper()");
		}
		this.wrapper = wrapper;

		// Retrieve the MBean server
		mBeanServer = Registry.getRegistry(null, null).getMBeanServer();

		log.debug(this);
	}

	public Context getManagerContext() {
		return managerContext;
	}

	public void setManagerContext(Context managerContext) {
		this.managerContext = managerContext;
	}

	@Override
	public String toString() {
		return "FieldSetsServlet [connectors=" + Arrays.toString(connectors)
				+ ", container=" + container + ", context=" + context
				+ ", engine=" + engine + ", host=" + host + ", manager="
				+ manager + ", mBeanServer=" + mBeanServer + ", name=" + name
				+ ", oname=" + oname + ", service=" + service + ", wrapper="
				+ wrapper + ", server=" + server + ", managerContext="
				+ managerContext + ", httpConnector=" + httpConnector + "]";
	}
}
