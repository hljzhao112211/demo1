<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="../../static/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="../../static/css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="../../static/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<link href='https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="../../static/css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="../../static/js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
													<h2 class="inner-tittle page">Augment</h2>
													    <div class="login">
														<h3 class="inner-tittle t-inner">Login</h3>
																<div class="buttons login">
																			<ul>
																				<li><a href="#" class="hvr-sweep-to-right">Facebook</a></li>
																				<li class="lost"><a href="#" class="hvr-sweep-to-left">Twitter</a> </li>
																				<div class="clearfix"></div>
																			</ul>
																		</div>
																<form action="/login" method="post">
																		<input type="text" name="account" value="${account!}" class="text" placeholder="要显示的文字" >
																		<input type="password" name="password" value="${password!}">
																		<div class="submit"><input type="submit" onclick="myFunction()" value="Login" ></div>
																	${message!}
																		<div class="clearfix"></div>
																		
																		<div class="new">
																			<p><label class="checkbox11"><input type="checkbox" name="checkbox"><i> </i>Forgot Password ?</label></p>
																			<p class="sign">Do not have an account ? <a href="/login/registr">register</a></p>
																			<div class="clearfix"></div>
																		</div>
																	</form>
														</div>

														
													</div>
													
													
												<!--//login-top-->
										   </div>
						
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
												<div class="error-btn">
															<a class="read fourth" href="index.html">Return to Home</a>
															</div>
										   <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->
<script src="../../static/js/jquery.nicescroll.js"></script>
<script src="../../static/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="../../static/js/bootstrap.min.js"></script>
</body>
</html>