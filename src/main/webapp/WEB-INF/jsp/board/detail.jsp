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
                                <div class="form-group">
                                    <h3>Register Date</h3>
                                    <fmt:formatDate pattern="yyy-MM-dd" value="${board.regiDate}"></fmt:formatDate>
                                    <br>

                                    <input type="hidden" class="form-control" id="form-boardNo" value="${board.boardNo}" readonly/>

                                    <label for="form-goal">Your goal</label>
                                    <input class="form-control" id="form-goal" value="${board.goal}" readonly/>

                                    <label for="form-contents">contents</label>
                                    <textarea type="text" class="form-control" id="form-contents"
                                              readonly>${board.contents}</textarea>

                                    <label for="form-goal-ham">Make a bet:</label>
                                    <input type="text" id="form-goal-ham" value="${board.goalHam}" readonly/>

                                    <h3>Goal Date</h3>
                                    <fmt:formatDate pattern="yyy-MM-dd" value="${board.goalDate}"></fmt:formatDate>
                                </div>
                                <button class="btn btn-danger boardForm-btn" type="button"
                                        onclick="history.back()">Back
                                </button>

                                <div class="detail-comment">
                                        <div class="container">
                                            <h2>Posted Comments</h2>
                                            <div id="comments">
                                                <p class="dummy"><em>No comments yet!</em></p>
                                                <c:forEach items="${boardComments}" var="boardComments">
                                                    <p>${boardComments.member.name}</p>
                                                    <p>${boardComments.comments}</p>
                                                 </c:forEach>
                                            </div>
                                        </div>
                                    <div class="container">
                                        <h3>Voice your opinion</h3>
                                        <input id="form-loginUserNo" value="${loginUser.memberNo}"/>
                                        <textarea class="boardDetail-text" placeholder="Type your opinion here" id="myMessage"></textarea>
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


<%--이거 이용해봐야함--%>
<script>

    $('#send').on('click', function (e) {
        let boardNo = $('#form-boardNo').val();
        let memberNo = $('#form-loginUserNo').val();
        let comments = $('#myMessage').val();

        $.ajax({
            url:'/json/boardComments/add',
            method:'post',
            data:{boardNo:boardNo, memberNo:memberNo, comments:comments},
            success: function (result) {
                console.log("성공함.");
            }
        })
    });
    //
    // $(document).on('click', '#answer-submit', function(e) {
    //     var answerForm = $(this.parentNode).find('textarea');
    //     var commentNo = $(this.parentNode).find('.d-flex').find('.comment-no');
    //     var answer = $(this.parentNode).find('#answer-submit');
    //
    //     $.ajax({
    //         url: '/json/boardComments/add',
    //         method: 'post',
    //         data: {commentNo : $(commentNo).text(), answer: $(answerForm).val()},
    //         success: function(result) {
    //             $(answerForm).val('');
    //             console.log($(answerForm));
    //             $(answerForm).attr('style', 'display:none;');
    //             $(answer).attr('style', 'display:none');
    //         }
    //     })
    // })
</script>
</body>
</html>
