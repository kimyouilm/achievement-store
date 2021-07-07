<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Achievement Store</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/board/board.css">
    <link rel="stylesheet" href="../css/member/signUpLogin.css">

    <%--    mypage--%>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../css/member/mypage.css">

</head>
<body>

<div class="overlay"></div>
<section class="cd-hero">
    <jsp:include page="header.jsp"/>
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1>ACHIEVEMENT-STORE</h1>
                <span>Welcome to Achievement-Store</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                ddddddd
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Share My Goals</h1>
                <span>share your goals with other people</span>
            </div>
            <div class="cd-half-width second-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content second-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="right-about-text">
                                            <jsp:include page="board/list.jsp"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>STUDY GROUP</h1>
                <span>We produce featured product every week</span>
            </div>
            <div class="cd-half-width third-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content third-content">
                                <div class="row">
                                    <div class="col-md-7 left-image">
                                        <img src="img/left-feature-image.png">
                                    </div>
                                    <div class="col-md-5">
                                        <div class="right-feature-text">
                                            <h4>Featured Product: <em>Newline</em></h4>
                                            <p>Lorem ipsum dolor amet, consecte adipiscing elit, quisque dictum convallis mi. In dapibus auctor dictum donec mattis quis eros ultricies feugiat. Morbi congue faucibus mi, ague blandit curabitur ac lacinia.</p>
                                            <div class="feature-list">
                                                <ul>
                                                    <p>- Suspendisse mattis finibus sem</p>
                                                    <p>- Pellentesque et urna vel lectus</p>
                                                    <p>- Vestibulum iaculis nisi dui</p>
                                                    <p>- Donec sagittis eros , ac tempus ligula</p>
                                                    <p>- Integer sapien risus, auctor</p>
                                                </ul>
                                            </div>
                                            <div class="primary-button">
                                                <a href="#">Discover More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <div class="heading">
                <h1>Store</h1>
                <span>Here you can check our recent projects</span>
            </div>
            <div class="cd-half-width fourth-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content fourth-content">
                                <div class="row">
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-01.jpg" data-lightbox="image-1"><img src="img/project-item-01.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-02.jpg" data-lightbox="image-1"><img src="img/project-item-02.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-03.jpg" data-lightbox="image-1"><img src="img/project-item-03.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-04.jpg" data-lightbox="image-1"><img src="img/project-item-04.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-05.jpg" data-lightbox="image-1"><img src="img/project-item-05.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-06.jpg" data-lightbox="image-1"><img src="img/project-item-06.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-07.jpg" data-lightbox="image-1"><img src="img/project-item-07.jpg"></a>
                                    </div>
                                    <div class="col-md-3 project-item">
                                        <a href="img/item-08.jpg" data-lightbox="image-1"><img src="img/project-item-08.jpg"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <c:if test="${not empty loginUser}">
                <div class="heading">
                    <h1>My Page</h1>
                    <span>You'll be responded within 48 hrs</span>
                </div>
                <div class="cd-half-width fivth-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="content fivth-content">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <jsp:include page="member/mypage.jsp"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section> <!-- .cd-hero -->

<jsp:include page="footer.jsp"/>

<script src="../js/common/vendor/jquery-1.11.2.min.js"></script>
<script src="../js/common/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/common/plugins.js"></script>
<script src="../js/common/main.js"></script>
<script src="../js/member/signUpLogin.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</body>
</html>