<%@page import="com.project.mentoring.dto.AdminSubMajorListDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project.mentoring.dao.AdminSubMajorListDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TakeYourTime</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
    <link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/subpage.css">
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon"
        href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/slick.min.js"></script>
</head>
<body>

<!-- 유저가 제다이 -->
<header id="header">
        <div class="topmenu">
            <div class="row">
                <a href="#none"><i class="fab fa-facebook-square"></i></a>
                <a href="#none"><i class="fab fa-twitter"></i></a>
                <a href="#none"><i class="fab fa-instagram"></i></a>
                <a href="#none"><i class="fas fa-comment-dots"></i></a>
            </div>
        </div>
        <div class="menubar row">
            <div class="logo cf">
                <!-- <svg viewBox="0 0 1000 1000" role="presentation" aria-hidden="true" focusable="false"
                        style="height: 1em; width: 1em; display: inline-block; fill: currentcolor;">
                        <path
                            d="m499.3 736.7c-51-64-81-120.1-91-168.1-10-39-6-70 11-93 18-27 45-40 80-40s62 13 80 40c17 23 21 54 11 93-11 49-41 105-91 168.1zm362.2 43c-7 47-39 86-83 105-85 37-169.1-22-241.1-102 119.1-149.1 141.1-265.1 90-340.2-30-43-73-64-128.1-64-111 0-172.1 94-148.1 203.1 14 59 51 126.1 110 201.1-37 41-72 70-103 88-24 13-47 21-69 23-101 15-180.1-83-144.1-184.1 5-13 15-37 32-74l1-2c55-120.1 122.1-256.1 199.1-407.2l2-5 22-42c17-31 24-45 51-62 13-8 29-12 47-12 36 0 64 21 76 38 6 9 13 21 22 36l21 41 3 6c77 151.1 144.1 287.1 199.1 407.2l1 1 20 46 12 29c9.2 23.1 11.2 46.1 8.2 70.1zm46-90.1c-7-22-19-48-34-79v-1c-71-151.1-137.1-287.1-200.1-409.2l-4-6c-45-92-77-147.1-170.1-147.1-92 0-131.1 64-171.1 147.1l-3 6c-63 122.1-129.1 258.1-200.1 409.2v2l-21 46c-8 19-12 29-13 32-51 140.1 54 263.1 181.1 263.1 1 0 5 0 10-1h14c66-8 134.1-50 203.1-125.1 69 75 137.1 117.1 203.1 125.1h14c5 1 9 1 10 1 127.1.1 232.1-123 181.1-263.1z">
                        </path>
    	                <h2>Take Your Time</h2>
                    </svg> -->
                <h1><a href="/MentoringProject/mentorHomePage.do">LOGO</a></h1>
            </div>
            <nav>
                <ul>
                <li><a href="mentorBeAnotherMentor2.jsp">포스정보 추가등록</a></li> 
                <li><a href="/MentoringProject/help.do">도움말</a></li>
                <li><a href="/MentoringProject/showMentorMyPage.do">마이페이지</a></li>
                <li><a href="/MentoringProject/logout.do">로그아웃</a></li>
                </ul>
            </nav>
        </div>
    </header>
	<!-- 헤더 구역 끝 -->
	<!-- 본문 시작 -->
	<section>
		<article class="subpage page2"> 
			<div class="row">
				<div class="step cf">
					<ul>
						<li>
							1단계
						</li>
						<li>
							2단계
						</li>
						<li>
							3단계
						</li>
				
					</ul>
				</div>
				<div class="title">
					<h2>2 단계 : 당신의 세부전공과 당신의 세부 프로필을 작성해주세요!</h2>
										<% int majorPk = (int) request.getAttribute("majorPk"); %>
										<%
								AdminSubMajorListDao productShowSubMajorListDao = new AdminSubMajorListDao();
								ArrayList<AdminSubMajorListDto> subMajorList= productShowSubMajorListDao.subMajorList(majorPk);
							%>
							<% session.getAttribute("mentorPk"); %>
							
				</div>
				<form action="mentorProfileIntroduceAdd.do" method="post">
					<div class="container cf">
							<input type="text" hidden="true" value="<% out.print(session.getAttribute("mentorPk")); %>" name="mentorpk">
							<table id="majorIntro" >
								<tr>
									<td>세부 전공 : </td>
									<td>
										<select name="submajorpk">
										<%for(int i = 1; i < subMajorList.size() ; i++){ %>
											<option value="<%out.print(subMajorList.get(i).getSubmajorPk()); %>" selected="selected"><%out.print(subMajorList.get(i).getSubmajorName()); %></option>
											<%} %>
										</select>
									</td>
								</tr>
								<tr>
								<tr>
									<td>타이틀</td>
									<td>
										<input type="text" placeholder="자신을 나타내는 개성있는 제목!" name="title">
									 </td>
								</tr>
								<tr>
									<td>자기소개 : </td>
									<td><textarea rows="10" cols="50" name="introduce">간단하게 입력하세요</textarea></td>
								</tr>
								<tr>
									<td> 1 시간 가격 : </td>
									<td><input type="text" size = "20" name="price" placeholder="1시간 멘토링 가격을 입력해 주세요!"></td>
								</tr>
							</table>
					</div>
					<button  type="submit" value="등록하고 다음으로 넘어가기" onclick="showButton()">
						<span>등록하고 다음으로 넘어가기</span>
					</button>
				</form>
			</div>
		</article>
	</section>

	<footer id="footer">
        <div class="row">
            <p>
                <a href="#none">회사소개</a>
                <a href="#none">사업분야</a>
                <a href="#none">갤러리</a>
                <a href="#none">온라인문의</a>
                <a href="#none">고객센터</a>
            </p>
            <p><span>주소 : 부산광역시 해운대구 좌동 273-10</span> <span class="hide"> / </span> <span>상호 : 디자인선사인</span> <span
                    class="hide"> / </span>사업자등록번호 : 123-456-7890<br>
                <a href="tel:070-7155-19749">Tel : 070-7155-19749</a> <span class="hide"> / </span><span>Fax :
                    02-2139-1142</span> <span class="hide"> / </span><a href="mailto:gijung23@nate.com">E-mail :
                    gijung23@nate.com</a></p>
            <p>Copyright &copy; Sunsine.com All Rights Reserved.</p>
        </div>
    </footer>
    <div class="gotop"><a href="#"><i class="fas fa-angle-up"></i><br><span>top</span></a></div>
	
	<script type="text/javascript">
		function handleOnChange(e){
			const major = e.value;
			
			document.getElementById("majortext").value = major; 
		}
	
	
		function showTable(){
			
			document.getElementById("majorTable").hidden = false;
			
			
		}
		
		function formAction(){
			document.majorIntro.submit()
		}
	
	</script>
		
</body>
</html>

<!-- 원래 페이지 시작 -->

