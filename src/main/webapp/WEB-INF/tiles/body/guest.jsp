<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="well lead">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item">
                <img class="first-slide"
                     src="/resources/img/carousel2.gif"
                     alt="First slide">

                <div class="container">
                    <div class="carousel-caption">
                        <h1 class="car-one"><spring:message code='guest.carousel.one.head'/></h1>

                        <p class="car-one"><spring:message code='guest.carousel.one.content'/></p>

                        <p><a class="btn btn-lg btn-primary" href="/irontest/tests" role="button"><spring:message
                                code='guest.carousel.one.button'/></a></p>
                    </div>
                </div>
            </div>
            <div class="item active">
                <img class="second-slide"
                     src="/resources/img/carousel3.jpg"
                     alt="Second slide">

                <div class="container">
                    <div class="carousel-caption">
                        <h1 class="car-two"><spring:message code='guest.carousel.two.head'/></h1>

                        <p class="car-two"><spring:message code='guest.carousel.two.content'/></p>

                        <p><a class="btn btn-lg btn-primary" href="/irontest/login" role="button"><spring:message
                                code='guest.carousel.two.button'/></a></p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="third-slide"
                     src="/resources/img/carousel4.jpg"
                     alt="Third slide">

                <div class="container">
                    <div class="carousel-caption">
                        <h1 class="car-three"><spring:message code='guest.carousel.three.head'/></h1>

                        <p class="car-three"><spring:message code='guest.carousel.three.content'/></p>

                        <p><a class="btn btn-lg btn-primary" href="/irontest/contact/" role="button"><spring:message
                                code='guest.carousel.three.button'/></a></p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
