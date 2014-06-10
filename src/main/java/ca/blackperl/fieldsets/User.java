package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class User {

	private Log log = LogFactory.getLog(User.class);
	
	private String user;
	private String password;
	
	@Override
	public String toString() {
		return "User [user=" + user + ", password=" + password + "]";
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
