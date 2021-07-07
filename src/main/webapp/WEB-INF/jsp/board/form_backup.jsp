<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Set My Gaol</title>

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/common/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common/bootstrap-theme.min.css">
    <link href="../css/common/fontAwesome.css" rel="stylesheet">
    <link href="../css/common/templatemo-style.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/board/board.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
</head>
<body>

<div class="overlay"></div>
<section class="cd-hero">
    <ul class="cd-hero-slider">
        <li class="selected">
            <div class="heading">
                <h1><a href="/index">Set My Goals</a></h1>
                <span>Set your goals and let everyone know your goals.</span>
            </div>
            <div class="cd-full-width first-slide">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content first-content">
                                <form method="post" action="add" name="form">
                                    <div class="form-group">
                                        <input type="hidden" id="member" name="memberNo"
                                               value="${loginUser.memberNo}" readonly/><br>

                                        <h2 for="form-title">Title for your goal</h2>
                                        <input type="text" class="form-control" id="form-title" name="title"
                                               placeholder="title" required/>

                                        <label for="form-goal">Your goal</label>
                                        <input type="text" class="form-control" id="form-goal" name="goal"
                                               placeholder="goal" required/>

                                        <label for="form-contents">contents</label>
                                        <textarea  type="text" class="form-control" id="form-contents" name="contents"
                                               placeholder="Another input" required></textarea>

                                        <label for="form-myHam">My Ham: </label>
                                        <input type="text" id="form-myHam" value="${loginUser.ham}" readonly>

                                        <label for="form-goal-ham">Make a bet:</label>
                                        <input type="text" id="form-goal-ham" name="goalHam" onblur="ham_CheckFunc()" required/>
                                        <div id="ownHam_chk"></div>

                                            <h3>Goal Date</h3>
                                            <div class="input-group date">
                                                <input type="text" class="form-control" name="goalDate" required><span
                                                    class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary boardForm-btn" type="submit">Summit</button>
                                        <button class="btn btn-danger boardForm-btn" type="button"
                                                onclick="history.back()">Cancel
                                        </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul> <!-- .cd-hero-slider -->
</section> <!-- .cd-hero -->

<script src="../js/board/form.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<script type='text/javascript'
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type='text/javascript'>
    $(function () {
        $('.input-group.date').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy/mm/dd",
            language: "kr"
        });
    });
</script>

<jsp:include page="../footer.jsp"/>
</body>
</html>