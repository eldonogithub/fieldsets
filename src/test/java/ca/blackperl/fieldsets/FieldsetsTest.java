package ca.blackperl.fieldsets;

import static org.junit.Assert.fail;

import org.junit.Assert;
import org.junit.Test;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlInput;
import com.gargoylesoftware.htmlunit.html.HtmlPage;

public class FieldsetsTest {

	@Test
	public void homePage() throws Exception {
		final WebClient webClient = new WebClient();
		final HtmlPage page = webClient
				.getPage("http://eldon.namaka.ca/fieldsets");
		Assert.assertEquals("Fieldsets Application", page.getTitleText());

		final String pageAsText = page.asText();
		Assert.assertTrue("Page missing text",
				pageAsText.contains("Welcome!"));

		webClient.closeAllWindows();
	}
	
	@Test
	public void user_fullname() throws Exception {
		final WebClient webClient = new WebClient();
		final HtmlPage page = webClient
				.getPage("http://eldon.namaka.ca/fieldsets/fullname.do");
		Assert.assertEquals("Contact Info", page.getTitleText());

		final String pageAsText = page.asText();
		HtmlForm formByName = page.getFormByName("welcomeForm");
		HtmlInput inputByName = formByName.getInputByName("person.fname");
		HtmlInput inputByName2 = formByName.getInputByName("person.lname");
		Assert.assertNotNull(inputByName);
		Assert.assertNotNull(inputByName2);

		webClient.closeAllWindows();
	}
}
