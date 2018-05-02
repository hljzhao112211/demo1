<!DOCTYPE HTML>
<html>
<head>
<title>Index</title>
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
	<!-- /js -->
<script src="../../static/js/jquery-1.10.2.min.js"></script>
<!-- //js-->
</head>
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div>
	   <div class="inner-content">
		<!-- header-starts -->
						<!--outter-wp-->
							<div class="outter-wp">
									<div class="graph-visual tables-main">
													<h3 class="inner-tittle two">プラン一覧</h3><#if loginUser?has_content><a class="btn blue" href="/plan/addPlan">プラン追加</a><#else> <a class="btn blue" href="">登録</a></#if>
														  <div class="graph">
															<div class="tables">
																<table class="table">
																	<thead>
																	<tr>
																	<th>#</th>
																	<th>名前</th>
																	<th>開始時間</th>
																	 <th>終了時間</th>
																	 <th>目的地</th>
																	 <th>目的</th>
																	 </tr>
																	 </thead>
																	<tbody>
                                                                    <#if planList?exists >
																		<#list planList as list>
																			<tr class="active">
																				<th scope="row">${list.id!}</th>
                                                                                <td>${list.userName!}</td>
																				<td>${list.fromDate!}</td>
																				<td>${list.toDate!}</td>
																				<td>${list.destination!}</td>
																				<td>${list.purpose!}</td>
																			</tr>
																		</#list>
																	</#if>
																	</tbody>
																</table>
															</div>

													</div>

										</div>
										<!--//graph-visual-->
									</div>
									<!--//outer-wp-->
									 <!--footer section start-->
									<!--footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
							</div>
							<script>
							var toggle = true;

							$(".sidebar-icon").click(function() {
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }

											toggle = !toggle;
										});
							</script>
<!--js -->
	<script src="../../static/js/jquery.nicescroll.js"></script>
	<script src="../../static/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="../../static/js/bootstrap.min.js"></script>
</body>
</html>