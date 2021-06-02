<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <link rel="stylesheet" href="css/common.css">
        <link rel="stylesheet" href="css/subpage.css">
    </head>
    <style>
    #section {max-width: 600px; margin: 140px auto; background: #ddd;
    		 box-shadow: 0 10px 10px 0 rgb(214, 214, 214);animation: aniz 2s ease-in-out 0s infinite alternate;
        	  padding: 50px 20px 150px; border-radius: 10px}
    @keyframes aniz {  0% {  transform: translateY(0px);  }  100% {    transform: translateY(30px);  }}
    #section .setxt { text-align: center; margin-bottom: 40px; line-height: 1.8}
    #section h3 {font-size: 28px; font-weight: 700; padding-top: 50px}
    .form_field {text-align: center}
    .form_field input{height: 40px; width: 44%; margin-bottom: 60px}
    .tokenbutton input {background: #028004; padding: 8px 20px; border-radius: 10px;
    					border: none; color: #fff; transition: all 0.5s}
    .tokenbutton input:hover {background: #064507; cursor: pointer}
    #section > a {float: right; overflow: hidden; font-style: italic; color: #666; padding-top: 20px;
    			  font-weight: 700; border-bottom: 3px double #666; margin-right: 30px; font-size: 15px;
    			  transition: all 0.5s; padding-bottom: 3px; margin-top: 20px;}
    #section > a:hover {color: #b82929; border-bottom: 3px double #b82929;}
    </style>
    <body>
    <section id="section">
        <div class="setxt">
        	<h3><i class="far fa-smile-wink"></i> 축하합니다!!!</h3>
        	<p>당신의 제다이에게서 받은 토큰 번호를 입력하면 돈이 바로 송금 됩니다!</p>
        </div>
        <form action="/MentoringProject/mentorMentoringCompleteTokenCheck.do" method="post">
          	<div class="form_field">
                <input style="display: none" type="text" name="schedulepk" class="form__input" required value="<%out.print(request.getParameter("scheduledpk"));%>">
                <input type="text" name="token" class="form__input" required placeholder="토큰번호는 6자리로 입력해주세요">
            </div>
            <div class="tokenbutton" align = "center">
                <input type="submit" value="토큰 입력">
            </div>
        </form>
        <a href="/MentoringProject/mentorScheduledCompleteListPage.do"><i class="fas fa-undo-alt"></i> 돌아가기</a>      
      </section>
      </body>
</html>