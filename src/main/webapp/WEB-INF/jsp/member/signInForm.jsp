<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Sign In</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Template Main CSS File -->
    <link href="../css/common/style.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link href="../js/common/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="../js/common/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../js/common/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../js/common/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../js/common/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="../js/common/vendor/aos/aos.css" rel="stylesheet">
</head>
<body>
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>Sign In</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
            <div class="row mt-5">
                <div class="col-lg-8 mt-5 mt-lg-0">
                    <form action="signIn" method="post" role="form" class="php-email-form">
                        <div class="form-row">
                            <div class="col-md-7 form-group">
                                <i class="icofont-id"></i>
                                <label for="id">ID:</label>
                                <input type="text" name="id" class="form-control" id="id" placeholder="Your User ID"/>
                            </div>
                            <div class="col-md-7 form-group">
                                <i class="icofont-ui-password"></i>
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" name="password" id="password"
                                       placeholder="Your Password"/>
                            </div>
                        </div>
                        <div class="signUpForm-btn">
                            <button type="submit">Login</button>
                            <button type="button" onclick="location.href='signUpForm'" class="create-accountBtn">Create New Account</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section><!-- End Contact Section -->
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp"/>

<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
<div id="preloader"></div>

<!-- Vendor JS Files -->
<script src="../js/common/vendor/jquery/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
<script src="../js/common/vendor/jquery.easing/jquery.easing.min.js"></script>
<script src="../js/common/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="../js/common/vendor/counterup/counterup.min.js"></script>
<script src="../js/common/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../js/common/vendor/aos/aos.js"></script>

<!-- Template Main JS File -->
<script src="../js/common/main.js"></script>
</body>
</html>