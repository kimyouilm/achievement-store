<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="cd-slider-nav">
    <nav>
        <span class="cd-marker item-1"></span>
        <ul>
            <li class="selected"><a href="#0"><div class="image-icon"><i class="index-icon fa fa-home fa-3x" aria-hidden="true"></i></div><h6>Welcome</h6></a></li>
            <li><a href="#0"><div class="header-div"><i class="index-icon fa fa-trophy fa-3x" aria-hidden="true"></i></div><h6>GOALS</h6></a></li>
            <li><a href="#0"><div class="header-div"><i class="index-icon fa fa-users fa-3x" aria-hidden="true"></i></div><h6>Group</h6></a></li>
            <li><a href="#0"><div class="header-div"><i class="index-icon fa fa-shopping-bag fa-3x" aria-hidden="true"></i></div><h6>Store</h6></a></li>
            <c:if test = "${empty loginUser}">
            <li><a href="#0"><div class="header-div"><i class="index-icon fa fa-user fa-3x" aria-hidden="true"></i></div><h6>Sign In</h6></a></li>
            </c:if>
            <c:if test = "${not empty loginUser}">
            <li><a href="#0"><div class="header-div"><i class="index-icon fa fa-user fa-3x" aria-hidden="true"></i></div><h6>My Page</h6></a></li>
            </c:if>
        </ul>
    </nav>
</div>
<!-- .cd-slider-nav -->