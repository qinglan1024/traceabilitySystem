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
        <title> Register page | SensationApp - Responsive admin template.</title>
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
            <!-- REGISTRATION FORM -->
            <!--===================================================-->
            <div class="lock-wrapper">
                <div class="panel lock-box">
                    <div class="center"> <img alt="" src="<%=contextPath%>/img/user.png" class="img-circle"/> </div>
                    <h4> Hello User !</h4>
                    <p class="text-center">请注册账户以登录您的账户</p>
                    <div class="row">
                        <form id="registration" class="form-inline" action="/user/login">
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div id="demo-error-container"></div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left">
                                    <label for="signupInputName" class="control-label">用户名</label>
                                    <input id="signupInputName" type="text" placeholder="请输入用户名" class="form-control" name="firstName" />
                                </div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left">
                                    <label for="signupInputEmail" class="control-label">电子邮件</label>
                                    <input id="signupInputEmail" type="email" placeholder="请输入邮箱" class="form-control" name="email" />
                                </div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left">
                                    <label for="signupInputPassword" class="control-label">密码</label>
                                    <input id="signupInputPassword" type="password" placeholder="密码" class="form-control lock-input" name="password" />
                                </div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left">
                                    <label for="signupInputRepassword" class="control-label">再次输入密码</label>
                                    <input id="signupInputRepassword" type="password" placeholder="请再次输入密码" class="form-control lock-input" name="confirmPassword" />
                                </div>
                            </div>
                            <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                <div class="text-left pad-btm">
                                    <label for="checkboxtickmark" class="form-checkbox form-icon control-label">
                                    <input id="checkboxtickmark" type="checkbox" name="agree" value="agree" >
                                    同意条款和协议
                                    </label>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-block btn-primary">
                            注册
                            </button>
                        </form>
                    </div>
                </div>
                <div class="registration"> 已经注册！ <a href="#"> <span class="text-primary"> 点击此处登录 </span> </a> </div>
            </div>
            <!--===================================================-->
            <!-- REGISTRATION FORM -->
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
        <!--Bootstrap Validator [ OPTIONAL ]-->
        <script src="<%=contextPath%>/plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
        <!--Demo script [ DEMONSTRATION ]-->
        <script src="<%=contextPath%>/js/demo/jasmine.js"></script>
        <!--Demo script [ DEMONSTRATION ]-->
        <script src="<%=contextPath%>/js/demo/pages-register.js"></script>
    </body>
</html>