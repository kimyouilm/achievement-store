<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Achievement Store</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/board/detail.css">
</head>
<body>
<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">${board.title}</a></h1>
                <span>Set your goals and let everyone know your goals.</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <form action="done" method="post">
                                    <div class="form-group">
                                        <h3>Register Date</h3>
                                        <fmt:formatDate pattern="yyy-MM-dd" value="${board.regiDate}"></fmt:formatDate>
                                        <br>

                                        <input name="boardNo" type="hidden" class="form-control" id="form-boardNo"
                                               value="${board.boardNo}" readonly/>

                                        <label for="form-goal">Your goal</label>
                                        <input class="form-control" id="form-goal" value="${board.goal}" readonly/>

                                        <label for="form-contents">contents</label>
                                        <textarea type="text" class="form-control" id="form-contents"
                                                  readonly>${board.contents}</textarea>
                                        <label for="form-goal-ham">Make a bet:</label>
                                        <input name="goalHam" type="text" id="form-goal-ham" value="${board.goalHam}"
                                               readonly/>
                                        <h3>Goal Date</h3>
                                        <fmt:formatDate pattern="yyyy-MM-dd" value="${board.goalDate}"></fmt:formatDate>

                                        <c:if test="${board.memberNo eq loginUser.memberNo}">
                                        <div id="boardBtn_1">
                                            <button class="btn btn-success" type="submit">Done!</button>
                                            <button class="btn btn-warning" type="button"
                                                    onClick="location.href='/board/fail?boardNo=${board.boardNo}'">Fail!
                                            </button>
                                        </div>
                                        <div id="boardBtn_2">
                                            <button class="btn btn-danger board-deleteBtn" type="button"
                                                    onClick="location.href='/board/delete?boardNo=${board.boardNo}'">
                                                Delete
                                            </button>
                                            <button class="btn btn-info board-deleteBtn" type="button"
                                                    onClick="location.href='/board/updateForm?boardNo=${board.boardNo}'">
                                                Update
                                            </button>
                                        </div>
                                        </c:if>
                                </form>
                                <button class="btn btn-secondary" type="button"
                                        onclick="history.back()">Back
                                </button>
                            </div>
                            <div class="detail-comment">
                                <div class="container">
                                    <h2>Posted Comments</h2>
                                    <div id="comments">
                                        <p id="comments-a"></p>
                                        <c:forEach items="${boardComments}" var="boardComments">
                                            <p>${boardComments.member.name}: ${boardComments.comments}
                                                <fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                                                value="${boardComments.commentsDate}"></fmt:formatDate></p>
                                        </c:forEach>
                                    </div>
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
                                    </div>
                                    <div class="container">
                                        <h3>Voice your opinion</h3>
                                        <input type="hidden" id="form-loginUserNo" value="${loginUser.memberNo}"/>
                                        <input id="form-loginUserName" value="${loginUser.name}"/>
                                        <textarea class="boardDetail-text" placeholder="Type your opinion here"
                                                  id="myMessage"></textarea>
                                        <button id="send">Do it!</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section>
<jsp:include page="../footer.jsp"/>
<script src="../js/board/detail.js" type="text/javascript"></script>
<script src="../js/common/vendor/jquery-1.11.2.min.js"></script>
<script src="../js/common/vendor/bootstrap.min.js"></script>
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
