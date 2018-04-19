<html><head>
    <title>Plan</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="../../static/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="../../static/css/style.css" rel="stylesheet" type="text/css">
    <!-- Graph CSS -->
    <link href="../../static/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400" rel="stylesheet" type="text/css">
    <!-- lined-icons -->
    <link rel="stylesheet" href="../../static/css/icon-font.min.css" type="text/css">
    <!-- //lined-icons -->
    <script src="../../static/js/jquery-1.10.2.min.js"></script>
    <!--clock init-->
    <script src="../../static/js/css3clock.js"></script>
    <!--Easy Pie Chart-->
    <!--skycons-icons-->
    <script src="../../static/js/skycons.js"></script>
    <!--//skycons-icons-->
</head>
<body style="">
<div class="page-container">
    <!--/content-inner-->
    <div class="left-content">
        <div class="inner-content">
            <!-- header-starts -->


            <!-- //header-ends -->
            <!--//outer-wp-->
            <div class="outter-wp">
                <!--/sub-heard-part-->

                <!--/sub-heard-part-->
                <!--/forms-->
                <div class="forms-main">


                    <!--/forms-inner-->
                    <div class="forms-inner">
                        <!--/set-1-->

                        <!--//set-1-->
                        <!--/set-2-->

                        <!--//set-2-->
                        <!--/set-3-->

                        <!--//set-3-->
                        <!--/set-4-->
                        <div class="set-4">
                            <div class="graph-2 general">
                                <h3 class="inner-tittle two">プラン</h3>
                                <div class="grid-1">
                                    <div class="forms">

                                        <div data-example-id="form-validation-states-with-icons">

                                            <form action="/plan/addPlan" method="post">
                                            　　<div>名前:${Session["username"]!}</div>
                                                <div class="form-group has-success has-feedback"> <label class="control-label" for="inputSuccess2">開始時間</label> <input type="datetime-local" placeholder="" required name="fromDate" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">   </div>
                                                <div class="form-group has-warning has-feedback"> <label class="control-label" for="inputWarning2">終了時間</label> <input type="datetime-local" placeholder="" required name="toDate" class="form-control" id="inputWarning2" aria-describedby="inputWarning2Status">  </div>
                                                <div class="form-group has-success has-feedback"> <label class="control-label" for="inputSuccess2">目的地</label> <input type="text" required name="destination" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">   </div>
                                                <div class="form-group has-success has-feedback"> <label class="control-label" for="inputSuccess2">目的</label> <input type="text" required name="purpose" class="form-control" id="inputSuccess2" aria-describedby="inputSuccess2Status">  </div>
                                                <div class="sign-up">
                                                <input type="submit" onclick="myFunction()" value="プラン登録"
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--//set-4-->
                    </div>
                    <!--//forms-inner-->
                </div>
                <!--//forms-->
            </div>
            <!--//outer-wp-->
            <!--footer section start-->

            <!--footer section end-->
        </div>
    </div>
    <!--//content-inner-->
    <!--/sidebar-menu-->

    <div class="clearfix"></div>
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
<script src="js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../../static/js/bootstrap.min.js"></script>

</body></html>