<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Course Details - Mentor Bootstrap Template</title>
    <meta content="" name="descriptison">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon">
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="../css/board/board.css" rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css"/>
</head>
<body>
<!-- ======= Header ======= -->
<jsp:include page="../header.jsp"/>

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>Set Your Goal</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
        <div class="container" data-aos="fade-up">
            <div class="row">
                <form action="add" method="post" role="form" class="php-email-form" enctype='multipart/form-data'>
                    <section class="photobtn">
                        <div class="thumbnail">
                            <img id="img" src="../upload/board/study-notebooks.jpg" class="img-fluid" alt="...">
                        </div>
                        <a id="addphoto" href="" class="btn"><i class="icofont-plus-circle"></i></a>
                        <a id="removephoto" href="" class="btn"><i class="icofont-minus-circle"></i></a>
                    </section>

                    <input type="file" name="file" id="file"/>
                    <div class="form-row">
                        <div class="col-md-6 form-group">
                            <label for="title">Title:</label>
                            <input type="text" name="title" class="form-control" id="title" placeholder="Title"
                                   data-rule="minlen:4" data-msg="Please enter at least 4 chars"/>
                            <div class="validate"></div>
                        </div>
                        <div class="col-md-6 form-group">
                            <label for="goal">Goal:</label>
                            <input type="text" class="form-control" name="goal" id="goal" placeholder="Your Goal"
                                   data-rule="minlen:4" data-msg="Please enter at least 4 chars"/>
                            <div class="validate"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="datetimepicker">Goal Date</label>
                        <div class="input-group date" id="datetimepicker" data-target-input="nearest">
                            <input type="text" class="form-control datetimepicker-input"
                                   data-target="#datetimepicker" name="goalDate">
                            <div class="input-group-append" data-target="#datetimepicker"
                                 data-toggle="datetimepicker">
                                <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="myHam">My ham:</label>
                        <input type="text" class="form-control" id="myHam"
                               value="${loginUser.ham}" readonly/>
                        <label for="goalHam">Bet ham:</label>
                        <input type="text" class="form-control" name="goalHam" id="goalHam" onblur="ham_CheckFunc()"/>
                        <div id="ownHam_chk"></div>
                    </div>
                    <div class="form-group">
                        <label for="contents">Contents:</label>
                        <textarea class="form-control" name="contents" rows="5" data-rule="required" id="contents"
                                  data-msg="Please write something for us" placeholder="Message"></textarea>
                        <div class="validate"></div>
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
    </section><!-- End Cource Details Section -->
</main><!-- End #main -->
<jsp:include page="../footer.jsp"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

<script type="text/javascript">
$('#datetimepicker').datetimepicker({
    defaultDate: new Date(),
    format:'YYYY-MM-DD HH:mm'
});
</script>
<script src="../js/board/form.js" type="text/javascript"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
</body>
</html>