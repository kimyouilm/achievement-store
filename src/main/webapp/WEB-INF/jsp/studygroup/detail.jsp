<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Course Details - Mentor Bootstrap Template</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Detail CSS File -->
    <link href="../css/board/detail.css" rel="stylesheet">
</head>

<body>

<!-- ======= Header ======= -->
<jsp:include page="../header.jsp"/>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>${studyGroup.title}</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
        <div class="container" data-aos="fade-up">
            <input name="studyNo" type="hidden" class="form-control" id="form-boardNo"
                   value="${studyGroup.studyNo}" readonly/>
            <div class="row">
                <div class="col-lg-8">
                    <c:if test="${studyGroup.img eq null}">
                        <img src="../upload/studygroup/studyGroup.jpg" class="img-fluid" alt="...">
                    </c:if>
                    <c:if test="${studyGroup.img ne null}">
                        <img src="../upload/studygroup/${studyGroup.img}" class="img-fluid" alt="...">
                    </c:if>
                    <p>${studyGroup.contents}</p>
                </div>
                <div class="col-lg-4">

                    <div class="course-info d-flex justify-content-between align-items-center">
                        <h5>User Name</h5>
                        <p><a href="#">${studyGroup.member.name}</a></p>
                    </div>

                    <div class="course-info d-flex justify-content-between align-items-center">
                        <h5>Max People</h5>
                        <p>${studyGroup.maxPeople} people</p>
                    </div>

                    <div class="course-info d-flex justify-content-between align-items-center">
                        <h5>Studying...</h5>
                        <p>${studyGroup.people}</p>
                    </div>

                    <div class="course-info d-flex justify-content-between align-items-center">
                        <h5>End Date</h5>
                        <p>
                            <fmt:formatDate pattern="yyy-MM-dd" value="${studyGroup.regDate}"/>
                            ~ <fmt:formatDate pattern="yyy-MM-dd" value="${endDate}"/>
                        </p>
                    </div>
                    <form action="joinStudy" method="post" role="form" class="php-email-form">
                        <input type="hidden" name="studyNo" value="${studyGroup.studyNo}" readonly/>
                        <input type="hidden" name="memberNo" value="${loginUser.memberNo}" readonly/>
                        <button type="submit" class="get-started-btn" type="submit">Join Study</button>
                    </form>
                </div>
            </div>

        </div>
    </section><!-- End Cource Details Section -->

    <!-- ======= Cource Details Tabs Section ======= -->
    <section id="cource-details-tabs" class="cource-details-tabs">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <div class="detail-comment">
                    <div class="container">
                        <h2>Posted Comments</h2>
                        <div id="comments">
                            <c:if test="${size  eq 0}">
                                <p>등록된 댓글이 없습니다.</p>
                            </c:if>
                            <c:if test="${size  ne 0}">
                                <p id="comments-a"></p>
                                <c:forEach items="${boardComments}" var="boardComments">
                                    <p>${boardComments.member.name}: ${boardComments.comments}
                                        <fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                                        value="${boardComments.commentsDate}"></fmt:formatDate>
                                        <c:if test="${boardComments.member.id  eq loginUser.id}">
                                        <i class="icofont-close-squared-alt"></i></p>
                                        </c:if>
                                </c:forEach>
                            </c:if>
                        </div>
                        <c:if test="${size ne 0}">
                            <nav aria-label="...">
                                <ul class="pagination">
                                    <li class="page-item" data-page="prev">
                                        <a class="page-link" href="#">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="${beginPage}" end="${endPage}" var="page">
                                        <li class="page-item" data-page="${page}">
                                            <a class="page-link" ${page != pageNo ? "href=#" : ""}>${page}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item" data-page="next">
                                        <a class="page-link" href="#">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </c:if>
                    </div>
                    <c:if test="${not empty loginUser}">
                        <div class="container">
                            <input type="hidden" id="form-loginUserNo" value="${loginUser.memberNo}" readonly/>
                            <input type="hidden" id="form-loginUserName" value="${loginUser.name}"/>
                            <textarea class="boardDetail-text" placeholder="Type your opinion here"
                                      id="myMessage"></textarea>
                            <button id="send">Do it!</button>
                        </div>
                    </c:if>
                </div>
            </div>

        </div>
    </section><!-- End Cource Details Tabs Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<jsp:include page="../footer.jsp"/>

<a href="#" class="back-to-top"><i class="bx bx-up-arrow-alt"></i></a>
<div id="preloader"></div>
<script src="../js/board/detail.js" type="text/javascript"></script>
<script>
    $('#send').on('click', function (e) {
        let boardNo = $('#form-boardNo').val();
        let memberNo = $('#form-loginUserNo').val();
        let comments = $('#myMessage').val();

        $.ajax({
            url: '/json/boardComments/add',
            method: 'post',
            data: {boardNo: boardNo, memberNo: memberNo, comments: comments},
            success: function (result) {
                console.log("성공함.");
            }
        })
    });
</script>
<script>
    (function () {
        $('#pageSize').val('${pageSize}')
    })();
    $('#pageSize').change((e) => {
        location.href = "detail?boardNo=${board.boardNo}&pageSize=" + $(e.target).val();
    });
    var currentPage = ${pageNo};
    $('.page-item').click((e) => {
        e.preventDefault();
        // e.currentTarget? 리스너가 호출될 때, 그 리스너가 등록된 태그를 가르킨다.
        // e.target? 이벤트가 발생된 원천 태그이다.
        //var page = e.currentTarget.getAttribute('data-page');
        var page = $(e.currentTarget).attr('data-page');
        if (page == "prev") {
            if (currentPage == 1)
                return;
            location.href = "detail?boardNo=${board.boardNo}&pageNo=" + (currentPage - 1) + "&pageSize=" + ${pageSize};

        } else if (page == "next") {
            if (currentPage >= ${totalPage})
                return;
            location.href = "detail?boardNo=${board.boardNo}&pageNo=" + (currentPage + 1) + "&pageSize=" + ${pageSize};

        } else {
            location.href = "detail?boardNo=${board.boardNo}&pageNo=" + page + "&pageSize=" + ${pageSize};
        }
    });
</script>
</body>

</html>
