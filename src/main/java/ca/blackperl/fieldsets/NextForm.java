package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;

public class NextForm extends ActionForm {

	private Log log = LogFactory.getLog(NextForm.class);
	private Person person = new Person();
	private Integer id;
	private boolean flag;
	
	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "NextForm [person=" + person + ", id=" + id + ", flag=" + flag
				+ "]";
	}

	public NextForm() {
		log.debug("NextForm created");
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public boolean getFlag() {
		return flag;
	}
}
