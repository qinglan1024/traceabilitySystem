<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <%
            String contextPath = request.getContextPath();
        %>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Login Page | SensationApp - Responsive admin template.</title>
        <link rel="shortcut icon" href="<%=contextPath%>/img/favicon.ico">
        <!--STYLESHEET-->
        <!--=================================================-->
        <!--Roboto Slab Font [ OPTIONAL ] -->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">
        <!--Bootstrap Stylesheet [ REQUIRED ]-->
        <link href="<%=contextPath%>/css/bootstrap.min.css" rel="stylesheet">
        <!--Jasmine Stylesheet [ REQUIRED ]-->
        <link href="<%=contextPath%>/css/style.css" rel="stylesheet">
        <!--Font Awesome [ OPTIONAL ]-->
        <link href="<%=contextPath%>/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!--Switchery [ OPTIONAL ]-->
        <link href="<%=contextPath%>/plugins/switchery/switchery.min.css" rel="stylesheet">
        <!--Bootstrap Select [ OPTIONAL ]-->
        <link href="<%=contextPath%>/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">
        <!--Demo [ DEMONSTRATION ]-->
        <link href="<%=contextPath%>/css/demo/jasmine.css" rel="stylesheet">
        <!--SCRIPT-->
        <!--=================================================-->
        <!--Page Load Progress Bar [ OPTIONAL ]-->
        <link href="<%=contextPath%>/plugins/pace/pace.min.css" rel="stylesheet">
        <script src="<%=contextPath%>/plugins/pace/pace.min.js"></script>
    </head>
    <!--TIPS-->
    <!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->
    <body>
        <div id="container" class="cls-container">
            <!-- LOGIN FORM -->
            <!--===================================================-->
            <div class="lock-wrapper">
                <div class="panel lock-box">
                    <div class="center"> <img alt="" src="<%=contextPath%>/img/user.png" class="img-circle"/> </div>
                    <h4> Hello User !</h4>
                    <p class="text-center">请登录您的账户</p>
                    <div class="row">
                        <form id="load-form" action="#" class="form-inline" method="post">
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left">
                                    <label class="text-muted">用户名</label>
                                    <input id="userId" type="text" placeholder="Enter Username" class="form-control" required />
                                    <span style="display: block; display: none; margin-right: 10px" class="fa fa-warning fa-lg form-control-feedback"></span>
                                </div>
                                <div class="text-left">
                                    <label class="text-muted">密码</label>
                                    <input id="password" type="password" placeholder="Password" class="form-control lock-input" required />
                                </div>
                                <div class="pull-left pad-btm">
                                    <label class="form-checkbox form-icon form-text">
                                    <input type="checkbox"> 记住账户
                                    </label>
                                </div>
                                <button onclick="loadValidate();" id="submit" type="submit" class="btn btn-block btn-primary">
                                登录
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="registration"> 还 没 有 账 户 ！&nbsp; <a href=""> <span class="text-primary"> 注 册 </span> </a> </div>
            </div>
        </div>
        <!--===================================================-->
        <!-- END OF CONTAINER -->
        <!--JAVASCRIPT-->
        <!--=================================================-->
        <!--jQuery [ REQUIRED ]-->
        <script src="<%=contextPath%>/js/jquery-2.1.1.min.js"></script>
        <!--BootstrapJS [ RECOMMENDED ]-->
        <script src="<%=contextPath%>/js/bootstrap.min.js"></script>
        <!--Fast Click [ OPTIONAL ]-->
        <script src="<%=contextPath%>/plugins/fast-click/fastclick.min.js"></script>
        <!--Jasmine Admin [ RECOMMENDED ]-->
        <script src="<%=contextPath%>/js/scripts.js"></script>
        <!--Switchery [ OPTIONAL ]-->
        <script src="<%=contextPath%>/plugins/switchery/switchery.min.js"></script>
        <!--Bootstrap Select [ OPTIONAL ]-->
        <script src="<%=contextPath%>/plugins/bootstrap-select/bootstrap-select.min.js"></script>
        <!--Demo script [ DEMONSTRATION ]-->
        <script src="<%=contextPath%>/js/demo/jasmine.js"></script>

        <script>
            function loadValidate() {
                var userId = $("#userId").val();
                var password = $("#password").val();
                $.ajax({
                    type: "POST",
                    url: "/user/login",
                    data: "userId="+userId+"&password="+password,
                    beforeSend:function(){
                        //请求前的处理
                    },
                    success:function(req){
                        alert("success")
                    },
                    complete:function(){
                        //请求完成的处理
                    },
                    error:function(){
                        alert("error")
                    }
                });
            }
        </script>
    </body>
</html>