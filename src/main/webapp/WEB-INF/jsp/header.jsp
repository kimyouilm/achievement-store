<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet">

<!-- Vendor CSS Files -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="../js/common/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../js/common/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="../js/common/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../js/common/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="../js/common/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="../js/common/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../css/common/style.css" rel="stylesheet">

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <h1 class="logo mr-auto"><a href="../index">Just Do It</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav class="nav-menu d-none d-lg-block">
            <ul>
                <li class="active"><a href="../index">Home</a></li>
<%--                <li><a href="about.html">About</a></li>--%>
                <li><a href="../board/list">Share Goal</a></li>
                <li><a href="../studygroup/list">Study Group</a></li>
<%--                <li><a href="pricing.html">Pricing</a></li>--%>
<%--                <li class="drop-down"><a href="">Study Group</a>--%>
<%--                    <ul>--%>
<%--                        <li><a href="#">Drop Down 1</a></li>--%>
<%--                        <li class="drop-down"><a href="#">Deep Drop Down</a>--%>
<%--                            <ul>--%>
<%--                                <li><a href="#">Deep Drop Down 1</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li><a href="#">Drop Down 2</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li><a href="contact.html">Contact</a></li>--%>
                <c:if test="${not empty loginUser}">
                    <li><a href="../member/mypage">My Page</a></li>
                    <li><a>Hello! ${loginUser.name}</a></li>
                </c:if>

            </ul>
        </nav><!-- .nav-menu -->
        <c:if test="${empty loginUser}">
            <a href="../member/signInForm" class="get-started-btn">Join Us</a>
        </c:if>
        <c:if test="${not empty loginUser}">
            <a href="../auth/signOut" class="get-started-btn">Sign Out</a>
        </c:if>
    </div>
</header>
<!-- End Header -->

<!-- Vendor JS Files -->
<script src="../js/common/vendor/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
<script src="../js/common/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="../js/common/vendor/php-email-form/validate.js"></script>
<script src="../js/common/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="../js/common/vendor/counterup/counterup.min.js"></script>
<script src="../js/common/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../js/common/vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="../js/common/main.js"></script>