package ca.blackperl.fieldsets;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

import ca.blackperl.fieldsets.beans.Node;

public class WelcomeForm extends ActionForm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private transient Person person;
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		super.reset(mapping, request);
		
		person = new Person();
	}
	
	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	
	
}
