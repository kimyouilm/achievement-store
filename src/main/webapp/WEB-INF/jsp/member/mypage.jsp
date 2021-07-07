<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Contact - Mentor Bootstrap Template</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

    <link href="../css/member/mypage.css" rel="stylesheet">
</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="../header.jsp"/>
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>My Page</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container" data-aos="fade-up">
            <div class="row mt-6">
                <br>
                <section class="photobtn">
                    <div class="userName-div">
                        <h3 id="userName">Hello! ${loginUser.name}</h3>
                    </div>
                    <div class="thumbnail">
                        <c:if test="${loginUser.profileImg eq null}">
                            <img src="../upload/member/default_img.jpg" id="img" alt="">
                        </c:if>
                        <c:if test="${loginUser.profileImg ne null}">
                            <img src="${loginUser.profileImg}" id="img" alt="">
                        </c:if>
                    </div>
                    <div class="grow-up">
                        <h4>나의 성장률</h4>
                        <progress id="grow-up" max="100" value="30"></progress>
                    </div>
                </section>
            </div>
        </div>
    </section><!-- End Contact Section -->

    <div class="myboard">
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                모든 게시물
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                <button class="dropdown-item" type="button">모든 게시물</button>
                <button class="dropdown-item" type="button">진행중인 게시물</button>
                <button class="dropdown-item" type="button">완료된 게시물</button>
            </div>
        </div>

        <div id="mypage-boardList" class="row" data-aos="zoom-in" data-aos-delay="100">
            <c:forEach items="${myBoards}" var="myBoards">
                <c:if test="${myBoards.isSuccess eq 0}">
                    <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                        <div class="course-item"
                             onClick="location.href='../board/detail?boardNo=${myBoards.boardNo}'">
                            <c:if test="${myBoards.goalImg eq null}">
                                <img src="/upload/board/study-notebooks.jpg" class="img-fluid" alt="...">
                            </c:if>
                            <c:if test="${myBoards.goalImg ne null}">
                                <img src="/upload/board/${myBoards.goalImg}" class="img-fluid" alt="...">
                            </c:if>

                            <div class="course-content">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4>${myBoards.goalHam}&nbsp;ham</h4>
                                    <p class="price"><fmt:formatDate pattern="yyy-MM-dd"
                                                                     value="${myBoards.regiDate}"/></p>
                                </div>
                                <h3><a href="">${myBoards.title}</a></h3>
                                <p>${myBoards.goal}</p>
                                <div class="trainer d-flex justify-content-between align-items-center">
                                    <div class="trainer-profile d-flex align-items-center">
                                        <img src="../img/trainers/trainer-1.jpg" class="img-fluid"
                                             alt="">
                                        <span>${myBoards.member.name}</span>
                                    </div>
                                    <div class="trainer-rank d-flex align-items-center">
                                        <i class="bx bx-user"></i>&nbsp;50
                                        &nbsp;&nbsp;
                                        <i class="bx bx-heart"></i>&nbsp;65
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Course Item-->
                </c:if>
            </c:forEach>
        </div>
    </div>
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp"/>

<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
<div id="preloader"></div>
<script src="../js/member/mypage.js"></script>
</body>
</html>