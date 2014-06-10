package ca.blackperl.fieldsets.actions;

import java.util.HashMap;
import java.util.Hashtable;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.naming.spi.InitialContextFactory;
import javax.naming.spi.InitialContextFactoryBuilder;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class DataSourceContext extends InitialContext implements InitialContextFactoryBuilder,
		InitialContextFactory {
	
	private HashMap<Object, Object> dataSources;

	public DataSourceContext() throws NamingException {
		super();
		dataSources = new HashMap<Object,Object>();
	}

	private Log log = LogFactory.getLog(DataSourceContext.class);

	@Override
	public Context getInitialContext(Hashtable<?, ?> environment)
			throws NamingException {
		return null;
	}

	@Override
	public InitialContextFactory createInitialContextFactory(
			Hashtable<?, ?> environment) throws NamingException {
		return this;
	}
}
