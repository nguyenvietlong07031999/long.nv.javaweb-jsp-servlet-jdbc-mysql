<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg nav-light bg-light fixed-top font-weight-bolder">
    <div class="container" >
    <a class="navbar-brand" href="#">
    <img  src="./images/icon/icon-3418201_1920.png" style="width:70px;height:auto">
    </a>
      
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/java_web_jsp_servlet_jdbc_mysql/trang-chu">HOME
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <c:if test="${not empty USERMODEL}">
           <li class="nav-item">
            <a class="nav-link" href='#'>Welcome ${USERMODEL.userName }</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href='<c:url value="/thoat?action=logout"/>'>LOGOUT</a>
          </li>
          </c:if>
          <c:if test="${empty USERMODEL}">
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/dang-nhap?action=login"/>'>LOGIN</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/dang-ki?action=register"/>'>REGISTER</a>
          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  
      