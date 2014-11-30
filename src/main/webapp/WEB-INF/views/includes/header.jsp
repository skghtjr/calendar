<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
        	  <c:url var="welcomeUrl" value="/" />	
            <li><a id="navWelcomeLink" href="${welcomeUrl}">홈</a></li>

            <c:url var="eventsUrl" value="/events/" />
            <li><a id="navEventsLink" href="${eventsUrl}">모든 이벤트 보기</a></li>

            <c:url var="myEventsUrl" value="/events/my" />
            <li><a id="navMyEventsLink" href="${myEventsUrl}">나의 이벤트</a></li>

            <c:url var="createEventUrl" value="/events/form" />
            <li><a id="navCreateEventLink" href="${createEventUrl}">이벤트 생성</a></li>
            
            <c:url var="signupUrl" value="/users/signup" />
            <li><a id="signupLink" href="${signupUrl}">회원 가입</a></li>
            
            <c:url var="signinUrl" value="/users/signin" />
            <li><a id="signinLink" href="${signinUrl}">로그인</a></li>
        </ul>
    </div>
  </div>
</nav>