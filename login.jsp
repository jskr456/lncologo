<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="resources/images/favicon.svg" rel="shortcut icon" type="image/svg "/>
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="resources/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css" rel="stylesheet">
    <title>Vista</title>  
</head>

<body>

	<div class="container-fluid loginpage_container custom_form_control">
		<div class="row text-center">
		
			
				<div class="col-md-6 col-sm-6 login_left_content">
			<img src="resources/images/LNCo Logo Latest.png" class="mb-5 xs_hidden">
			<img src="resources/images/mobilelnco.png" class="mb-5 show_xs mx-auto">
				<form id="signin-form" action="/login" method="post">
					  <div class="form-group">
					 
					    <input type="text" class="form-control" name="username" id="loginInputName"
					     placeholder="Enter User Name" required>
					     <div class="invalid-feedback" >
      						<p align="left" style="color:red">Your username is invalid.</p>
    					</div>
					  </div>
					  <div class="form-group">
					   <input id="password-field" type="password" class="form-control loginpasswordInput" name="password" value="" placeholder="Enter Password" minlength="4" maxlength="15" size="8" required>
					    <img src="resources/images/eye.png" toggle="#password-field" class="eye-icon field-icon toggle-password">
					    <div class="invalid-feedback" align="left">
      					   <p align="left" style="color:red">Your password is invalid.</p>
    					</div>
					    </div>
					  <div class="form-group row xs_hidden">
						    <div class="col-5 text-left pr-0">
						    	<div class="custom-control custom-checkbox">
								  <input type="checkbox" class="custom-control-input" name="remember-me" id="customCheck1">
								  <label class="custom-control-label" for="customCheck1">Remember Me</label>
								</div>
						    </div>
					  </div>
					  
				<div class="show_xs">
					<p align="left" style="color:white">${error}</p>
				</div>
				<div class="btn_container mx-auto xs_hidden">
					<p align="left" style="color:red">${error}</p>
					<button class="btn btn-primary" type="submit" id="loginbtn">Login</button></a>
				</div>
				<h6 class="xs_hidden">By signing up, you agree to Vista’s</h6>
				<p  class="xs_hidden">Terms and Conditions & Privacy Policy</p>
				<a href="dashboard.html" class="show_xs"><button type="submmit" class="btn btn-secondary btn-block mt-5">Login</button></a>
				<a href="forgot-password.html" class="forgot_pwd_link show_xs"><span>Forgot Password?</span></a>
				</form>
			</div>
			
			<div class="col-md-6 col-sm-6 primary-color login_right_content">
				<div class="layer">
					<h2></h2>
				</div>
			</div>
			<!-- <div class="col-md-6 col-sm-6 primary-color login_right_content">
				<div class="layer">
					<h2>Make Meetings Real</h2>
				</div>
			</div> -->
		</div>
	</div>	
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	$(".toggle-password").click(function() {
		  $(this).toggleClass("eye-icon eye-icon2");
		  var input = $($(this).attr("toggle"));
		  if (input.attr("type") == "password") {
		    input.attr("type", "text");
		  } else {
		    input.attr("type", "password");
		  }
		});
		var togSrc = [
			"resources/images/eye.png" ,
		    "resources/images/invisible.png" 
		];

		$(".toggle-password").click(function(){
		   this.src =  togSrc.reverse()[0];
		});  
		$(document).ready(function() {		  
				$(".btn.btn-primary").click(function() {
										
					    //Fetch form to apply custom Bootstrap validation
					    var form = $("#signin-form")
					    //alert(form.prop('id')) //test to ensure calling form correctly
					
					    if (form[0].checkValidity() === false) 
					    {
					    
					      event.preventDefault()
					      event.stopPropagation()
					    }
					    form.addClass('was-validated');
					
					    //Make ajax call here
					    //$(this).css("border", "5px solid blue");
			
			 		 })
		});

    </script>
</body>
</html>   