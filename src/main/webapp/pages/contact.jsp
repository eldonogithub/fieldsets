<%@ page contentType="text/html; charset=ISO-8859-1" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/main.css">
<script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div id="contact-form" class="clearfix">
		<h1>Get In Touch!</h1>
		<h2>Fill out our super swanky HTML5 contact form below to get in
			touch with us! Please provide as much information as possible for us
			to help you with your enquiry :)</h2>
		<ul id="errors" class="">
			<li id="info">There were some problems with your form
				submission:</li>
		</ul>
		<p id="success">Thanks for your message! We will get back to you
			ASAP!</p>
		<form method="post" action="process.php">
			<label for="name">Name: <span class="required">*</span></label> <input
				type="text" id="name" name="name" value="" placeholder="John Doe"
				required="required" autofocus="autofocus" /> <label for="email">Email
				Address: <span class="required">*</span>
			</label> <input type="email" id="email" name="email" value=""
				placeholder="johndoe@example.com" required="required" /> <label
				for="telephone">Telephone: </label> <input type="tel" id="telephone"
				name="telephone" value="" /> <label for="enquiry">Enquiry:
			</label> <select id="enquiry" name="enquiry">
				<option value="general">General</option>
				<option value="sales">Sales</option>
				<option value="support">Support</option>
			</select> <label for="message">Message: <span class="required">*</span></label>
			<textarea id="message" name="message"
				placeholder="Your message must be greater than 20 charcters"
				required="required" data-minlength="20"></textarea>

			<span id="loading"></span> <input type="submit" value="Holla!"
				id="submit-button" />
			<p id="req-field-desc">
				<span class="required">*</span> indicates a required field
			</p>
		</form>
	</div>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write(
								'<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')
	</script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<script>
		(function(b, o, i, l, e, r) {
							b.GoogleAnalyticsObject = l;
							b[l] || (b[l] = function() {
								(b[l].q = b[l].q || []).push(arguments)
							});
							b[l].l = +new Date;
							e = o.createElement(i);
							r = o.getElementsByTagName(i)[0];
							e.src = '//www.google-analytics.com/analytics.js';
							r.parentNode.insertBefore(e, r)
						}(window, document, 'script', 'ga'));
		ga('create', 'UA-XXXXX-X');
		ga('send', 'pageview');
	</script>
</body>
</html>
