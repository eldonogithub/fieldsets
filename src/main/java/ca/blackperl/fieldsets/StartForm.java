package ca.blackperl.fieldsets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;

public class StartForm extends ActionForm {

	private Log log = LogFactory.getLog(StartForm.class);
	
	private Person person = new Person();
	private Integer id;
	private boolean flag;
	
	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public StartForm() {
		log.debug("StartForm created");
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	@Override
	public String toString() {
		return "StartForm [person=" + person + ", id=" + id + ", flag=" + flag
				+ "]";
	}
}
