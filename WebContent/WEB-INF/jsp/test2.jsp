<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>HomeTest</title>
<link href="css/home.css" rel="stylesheet" type="text/css" />
</head>

<body class="all-in-container">
	<div class="header">
		<a href="#" class="logo">Nya☆喵克斯制药</a>
		<div class="header-list">
			<a href="#">Home</a> <a href="#">Talk</a> <a href="#">Blog</a> <a
				href="#">Luck</a>
		</div>
		<a href="login" class="user-login-info">${user.user_login}</a>
	</div>

	<div class="content">
		<div class="editor">

			<textarea placeholder="Talk some ξ( ✿＞◡❛)">
				</textarea>
			<div class="editor-toolbar">
				<a href="#">图片</a> <a href="#">标签</a> <a href="#">emoij</a> <a
					href="#" class="editor-publish">Nya</a>
			</div>

		</div>

		<div class="tab-bar">
			<a href="#">时间线上</a> <a href="#">火炎焱燚</a> <a href="#">特别关注</a> <a
				href="#">收藏喜欢</a>
		</div>

		<div class="card-flow">
			<br>
			<c:forEach items="${listTalksByUser}" var="talk" varStatus="st">
				<div class="card">
					<a href="" target="_blank" class="user-head"
						style="background-image: url(''); border-radius: 50%;">a</a>

					<div class="card-content">
						<a href="#" class="user-login">${user.user_nicename}@${user.user_login}</a>
						<a href="#" class="publish-time">${talk.talk_date}</a>
						<div class="card-detail">
							<div class="text-box">
								<a href="#">tag1</a> <a href="#">tag2</a> <a href="#">tag3</a> <br>
								<p>${talk.talk_content }</p>
							</div>
							<div class="img-box">
								<ul>
									<li><div class="img-detail"
											style="background-image: url('')">aa</div></li>
								</ul>
							</div>

						</div>
						<div class="card-action">
							<a href="#">点赞</a> <a href="#">评论</a> <a href="#">喜欢</a> <a
								href="#">分享</a>

						</div>
						<button class="card-action-more">more</button>
					</div>
				</div>
				</c:forEach>
		</div>

	</div>



	<div class="footer"></div>
</body>
</html>