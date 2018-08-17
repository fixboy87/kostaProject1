<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/account/registerForm.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link
	href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link
	href="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/magnific-popup.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/account/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/responsive.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/account/register_type.css">
</head>

<body>
	<%-- <%@ include file="../../pages/sub_page/header_menu.jsp"%> --%>
	<div class="super_container margin_top_control">

		<div id="content" class="content_wrap">

			<form id="signUpForm">
				<input type="hidden" name="formSubmit"
					value="formSubmit">

				<div class="">
					<div class="">
						<div class="">
							<h1>Sign Up</h1>

							<h4>Create a new account</h4>
							<br>

							<div id=""></div>

							<h2>My Details</h2>

							<p class="passwordmessage">
								<em>Passwords should be 8 or more characters and should
									contain at least 1 uppercase letter, 1 lowercase letter, a
									number and a symbol (!£$%@?) e.g. Abcd1234&amp;</em>
							</p>

							<div class="">
								<ul class="">
									<li>
										<div class="Nickname-wrapper Username-wrapper">
											<label class=""> 
												<span class="">Username *</span> 
												<input type="text" name="Nickname" required="" pattern="[a-zA-Z0-9_-]{5,50}" autocomplete="off" class="">
												<small class="error">Please enter a valid username</small>
											</label>
										</div>
									</li>

									<li>
										<div class="Email-wrapper">
											<label class="ff-wrapper">
												<span class="forminputlabel">Email Address *</span> 
												<input type="email" required="" name="Email" autocomplete="off" class="nls_protected"> 
												<small class="error">Please enter a valid email address.</small>
											</label>
										</div>
									</li>

									<li>
										<div class="Password-wrapper">
											<label class=""> 
												<span class="">Password *</span> 
												<input type="password" required="" pattern="[a-zA-Z0-9!£$%@?]{8,70}" id="Password" name="Password" autocomplete="off" class="">
												<small class="error">You have entered an invalid
														password. Passwords should be 8 or more characters and
														should contain at least 1 uppercase letter, 1 lowercase
														letter, a number and a symbol (eg. !£$%@?).</small>
											</label>
										</div>
									</li>

									<li>
										<div class="ConfirmPassword-wrapper">
											<label class=""> 
												<span class="">Confirm new password *</span> 
												<input type="password" required="" pattern="[a-zA-Z0-9!£$%@?]{8,70}" name="ConfirmPassword" autocomplete="off" data-equalto="Password" class=""> 
												<small class="error">The password you have confirmed does not match your new
													password. Please check your password and try again.</small>
											</label>
										</div>
									</li>

									<li>
										<div class="FirstName-wrapper">
											<label class=""> 
												<span class="">First Name *</span> 
												<input type="text" required="" pattern="[a-zA-Z]+" name="FirstName" autocomplete="off" class=""> 
												<small class="error">Enter your first name.</small>
											</label>
										</div>
									</li>

									<li>
										<div class="">
											<label class=""> 
												<span class="">Last Name *</span> 
												<input type="text" required="" pattern="[a-zA-Z]+" name="LastName" autocomplete="off" class=""> 
												<small class="error">Enter your last name.</small>
											</label>
										</div>
									</li>

									<li class="signup-form-field">
										<ul class="small-block-grid-1 medium-block-grid-4 large-block-grid-4 dob signup-date-of-birth">
											<li>
												<span class="forminputlabel"> Date of Birth *
													<i class="fa fa-question-circle help-icon" data-dropdown="dobexplanation" aria-controls="dobexplanation" aria-expanded="false"></i>
												</span>
											</li>
											<li>
												<select id="day" class="" name="day" pattern="day" required="">
													<option value="">Day</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
													<option value="19">19</option>
													<option value="20">20</option>
													<option value="21">21</option>
													<option value="22">22</option>
													<option value="23">23</option>
													<option value="24">24</option>
													<option value="25">25</option>
													<option value="26">26</option>
													<option value="27">27</option>
													<option value="28">28</option>
													<option value="29">29</option>
													<option value="30">30</option>
													<option value="31">31</option>
												</select> 
												<small class="error">Please enter a day</small>
											</li>
											<li>
												<select id="month" class="month needsclick nls_protected" name="month" pattern="month" required="">
													<option value="">Month</option>
													<option value="1">January</option>
													<option value="2">February</option>
													<option value="3">March</option>
													<option value="4">April</option>
													<option value="5">May</option>
													<option value="6">June</option>
													<option value="7">July</option>
													<option value="8">August</option>
													<option value="9">September</option>
													<option value="10">October</option>
													<option value="11">November</option>
													<option value="12">December</option>
												</select> 
												<small class="error">Please select a month</small>
											</li>
											<li>
												<select id="year" class="year needsclick nls_protected" name="year" pattern="year" required="">
													<option value="">Year</option>
													<option value="1918">1918</option>
													<option value="1919">1919</option>
													<option value="1920">1920</option>
													<option value="1921">1921</option>
													<option value="1922">1922</option>
													<option value="1923">1923</option>
													<option value="1924">1924</option>
													<option value="1925">1925</option>
													<option value="1926">1926</option>
													<option value="1927">1927</option>
													<option value="1928">1928</option>
													<option value="1929">1929</option>
													<option value="1930">1930</option>
													<option value="1931">1931</option>
													<option value="1932">1932</option>
													<option value="1933">1933</option>
													<option value="1934">1934</option>
													<option value="1935">1935</option>
													<option value="1936">1936</option>
													<option value="1937">1937</option>
													<option value="1938">1938</option>
													<option value="1939">1939</option>
													<option value="1940">1940</option>
													<option value="1941">1941</option>
													<option value="1942">1942</option>
													<option value="1943">1943</option>
													<option value="1944">1944</option>
													<option value="1945">1945</option>
													<option value="1946">1946</option>
													<option value="1947">1947</option>
													<option value="1948">1948</option>
													<option value="1949">1949</option>
													<option value="1950">1950</option>
													<option value="1951">1951</option>
													<option value="1952">1952</option>
													<option value="1953">1953</option>
													<option value="1954">1954</option>
													<option value="1955">1955</option>
													<option value="1956">1956</option>
													<option value="1957">1957</option>
													<option value="1958">1958</option>
													<option value="1959">1959</option>
													<option value="1960">1960</option>
													<option value="1961">1961</option>
													<option value="1962">1962</option>
													<option value="1963">1963</option>
													<option value="1964">1964</option>
													<option value="1965">1965</option>
													<option value="1966">1966</option>
													<option value="1967">1967</option>
													<option value="1968">1968</option>
													<option value="1969">1969</option>
													<option value="1970">1970</option>
													<option value="1971">1971</option>
													<option value="1972">1972</option>
													<option value="1973">1973</option>
													<option value="1974">1974</option>
													<option value="1975">1975</option>
													<option value="1976">1976</option>
													<option value="1977">1977</option>
													<option value="1978">1978</option>
													<option value="1979">1979</option>
													<option value="1980">1980</option>
													<option value="1981">1981</option>
													<option value="1982">1982</option>
													<option value="1983">1983</option>
													<option value="1984">1984</option>
													<option value="1985">1985</option>
													<option value="1986">1986</option>
													<option value="1987">1987</option>
													<option value="1988">1988</option>
													<option value="1989">1989</option>
													<option value="1990">1990</option>
													<option value="1991">1991</option>
													<option value="1992">1992</option>
													<option value="1993">1993</option>
													<option value="1994">1994</option>
													<option value="1995">1995</option>
													<option value="1996">1996</option>
													<option value="1997">1997</option>
													<option value="1998">1998</option>
													<option value="1999">1999</option>
													<option value="2000">2000</option>
													<option value="2001">2001</option>
													<option value="2002">2002</option>
												</select> 
												<small class="error">Please select a year</small>
											</li>
										</ul> 
										<i class="fa fa-question-circle help-icon"
										data-dropdown="dobexplanation"
										aria-controls="genderexplanation" aria-expanded="true"></i>

										<div id="dobexplanation" data-dropdown-content=""
											class="f-dropdown content rounded" aria-hidden="true">
											<p>You must be at least 16 years old to create an
												account.</p>
										</div>

										<div class="DoB-wrapper">
											<small class="error">You have to be over 16</small>
										</div>
									</li>

									<li class="signup-form-field">
										<div class="Gender-wrapper">
											<label class="ff-wrapper ff-select"> 
												<span class="forminputlabel">Gender *</span> 
													<select id="Gender" class="needsclick" name="Gender" required="">
														<option value="" selected=""></option>
														<option value="Male">Male</option>
														<option value="Female">Female</option>
													</select> 
													<small class="error">Please select your gender</small>
											</label> 
											<i class="fa fa-question-circle help-icon" data-dropdown="genderexplanation" aria-controls="genderexplanation" aria-expanded="false"></i>
											<div id="genderexplanation" data-dropdown-content="" class="f-dropdown content rounded" aria-hidden="true">
												<p>Some hostels need this information to allocate Male
													or Female dorms.</p>
											</div>
										</div>
									</li>

									<li>
										<div class="Nationality-wrapper">
											<label class="ff-wrapper"> 
												<span class="forminputlabel">Nationality *</span> 
												<select id="nationality" class="needsclick" name="Nationality" required="">
													<option value="" selected="selected"></option>
													<option disabled="">--------------------</option>
												</select> 
												<small class="error">Select Nationality</small>
											</label>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>


</div>
<%@include file="../../pages/sub_page/footer.html"%>

<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/moment.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/pignose.calendar.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/custom.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/account/registerType.js"></script>
</body>
</html>