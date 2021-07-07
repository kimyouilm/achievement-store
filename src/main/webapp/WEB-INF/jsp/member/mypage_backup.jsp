<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div>

    <div class="box">
        <div id="overlay">
            <div class="image">
                <div class="trick">

                </div>
            </div>
            <ul class="text">${loginUser.name}</ul>

            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <div class="title btn btn-info btn-outline btn-lg">My Information</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
<%--                            default 일때 써야함  ../img/default_img.jpg--%>
                            <form id="form" class="topBefore" action="/member/updateMyInfo" method="post">
                                <input type="hidden" id="member" name="memberNo" value="${loginUser.memberNo}" readonly/><br>
                                <input id="id" type="text" value="${loginUser.id}" readonly>
                                <input name="name" type="text" value="${loginUser.name}">
                                <input name="email" type="email" value="${loginUser.email}">
                                <input name="password" type="password" placeholder="Your password">
                                <input id="submit" type="submit" value="Update My Info">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading " role="tab" id="headingOne">
                        <h4 class="panel-title ">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="" aria-controls="collapseOne">
                                <div class="title  btn btn-info btn-outline btn-lg">ABOUT WALTER</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            Walter has been building websites for years. He enjoys making unique websites and web projects. His hobbies include photography, woodworking, leatherworking, fishing, and mid century modern furniture.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <div class="title btn btn-info btn-outline btn-lg">Ham History</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            Walter has been building websites for years. He enjoys making unique websites and web projects. His hobbies include photography, woodworking, leatherworking, fishing, and mid century modern furniture.
                        </div>
                    </div>
                </div>
            </div>
</div>
<div class="board_wrap">
    <div class="board-button-div">
        <button class="board-button btn btn-outline-warning" type="button"
                onclick="location.href='/board/form'"> set my new goal
        </button>
    </div>
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">제목</th>
            <th scope="col">목표</th>
            <th scope="col">작성자</th>
            <th scope="col">등록일</th>
        </tr>
        </thead>
        <tbody>
        <!-- align="center" -->
        <c:forEach items="${myBoards}" var="myBoards">
            <c:if test="${myBoards.isSuccess eq 0}">
                <tr class="board-list-tr" onClick="location.href='/board/detail?boardNo=${myBoards.boardNo}'"
                    style="cursor:pointer;">
                    <th scope="row">${myBoards.boardNo}</th>
                    <td>${myBoards.title}</td>
                    <td>${myBoards.goal}</td>
                    <td>${myBoards.member.name}</td>
                    <td>
                        <fmt:formatDate pattern="yyy-MM-dd" value="${myBoards.regiDate}"/>
                    </td>
                </tr>
            </c:if>
        </c:forEach>
        </tbody>
    </table>
</div>
