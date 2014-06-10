<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insert definition="newTemplateDefinition">
	<tiles:put name="pageTitle" type="string">Purchase</tiles:put>
	<tiles:put type="String" name="body">
		<form id="payment">
			<fieldset>
				<legend>Your details</legend>
				<ol>
					<li><label for="name">Name</label> <input id="name"
						name="name" type="text" placeholder="First and last name" required
						autofocus></li>
					<li><label for="email">Email</label> <input id="email"
						name="email" type="email" placeholder="example@domain.com"
						required></li>
					<li><label for="phone">Phone</label> <input id="phone"
						name="phone" type="tel" placeholder="Eg. +447500000000" required></li>
				</ol>
			</fieldset>
			<fieldset>
				<legend>Delivery address</legend>
				<ol>
					<li><label for="address">Address</label> <textarea
							id="address" name="address" rows="5" required cols="20"></textarea></li>
					<li><label for="postcode">Post code</label> <input
						id="postcode" name="postcode" type="text" required></li>
					<li><label for="country">Country</label> <input id="country"
						name="country" type="text" required></li>
				</ol>
			</fieldset>
			<fieldset>
				<legend>Card details</legend>
				<ol>
					<li>
						<fieldset>
							<legend>Card type</legend>
							<ol>
								<li><input id="visa" name="cardtype" type="radio">
									<label for="visa">VISA</label></li>
								<li><input id="amex" name="cardtype" type="radio">
									<label for="amex">AmEx</label></li>
								<li><input id="mastercard" name="cardtype" type="radio">
									<label for="mastercard">Mastercard</label></li>
							</ol>
						</fieldset>
					</li>
					<li><label for="cardnumber">Card number</label> <input
						id="cardnumber" name="cardnumber" type="number" required></li>
					<li><label for="secure">Security code</label> <input
						id="secure" name="secure" type="number" required></li>
					<li><label for="namecard">Name on card</label> <input
						id="namecard" name="namecard" type="text"
						placeholder="Exact name as on the card" required></li>
				</ol>
			</fieldset>
			<fieldset>
				<button type="submit">Buy it!</button>
			</fieldset>
		</form>
		<script type="text/javascript">
			// Shorthand for $( document ).ready()
			$(function() {
				console.debug("autosave ready!");
				// Get the text field that we're going to track
				var field = $("#address");

				// See if we have an autosave value
				// (this will only happen if the page is accidentally refreshed)
				var savedField = sessionStorage.getItem("autosave");
				if ( savedField ) {
					console.debug('Saved Field: ' + savedField );
					
					// Restore the contents of the text field
					$(field).val(savedField);
				}

				// Check the contents of the text field every second
				setInterval(function() {

					// And save the results into the session storage object
					sessionStorage.setItem("autosave", $(field).val() );
					
				}, 1000);
			});
		</script>
	</tiles:put>
	<tiles:putList name="css">
		<tiles:add type="page" value="/layout/css.jsp" />
		<tiles:add type="page" value="/layout/purchase.jsp" />
	</tiles:putList>
</tiles:insert>