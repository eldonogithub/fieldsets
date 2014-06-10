package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Person  {

	private Log log = LogFactory.getLog(Person.class);
	
	private String fname;
	private String lname;
	
	@Override
	public String toString() {
		return "Person [fname=" + fname + ", lname=" + lname + "]";
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		log.debug("fname: " + fname);
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		log.debug("lname: " + lname);
		this.lname = lname;
	}
	
}
