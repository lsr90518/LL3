<%@page contentType="text/html" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
<c:import url="include/head.jsp">
	<c:param name="title" value="Login" />
	<c:param name="css">
		<link rel="stylesheet" type="text/css"
			href="/learninglog/js/bootstrap/css/bootstrap.min.css" />
		<script type="text/javascript"
			src="/learninglog/js/bootstrap/js/bootstrap.min.js"></script>
		<style type="text/css">
#abstract {
	float: left;
	width: 420px;
	padding: 5px;
	font-size: 16px;
	word-wrap: break-word;
	word-break: normal;
	color: black;
	z-index: -300;
	text-align: justify;
}

.loginForm {
	margin: 20px auto;
	float: left;
}
</style>
	</c:param>
</c:import>
<script>
function auth(){
alert("Your authentication is incorrent.If you use this system, please you contact to system administrator.");
}
</script>
<body id="page_member_login">
	<div id="Body">
		<div id="Container">

			<div id="Header">
				<div id="HeaderContainer">
					<h1>
						<a href="http://ll.is.tokushima-u.ac.jp">Learning Log</a>
					</h1>
					<div id="globalNav">
						<ul>
						</ul>
					</div>
					<!-- globalNav -->
					<div id="topBanner"></div>
				</div>
				<!-- HeaderContainer -->
			</div>
			<!-- Header -->


			<div id="Contents">
				<div id="ContentsContainer">
					<div id="localNav"></div>
					<!-- localNav -->

					<div id="LayoutA" class="Layout">

						<div id="Top">
							<div id="MailAddressLogin" class="loginForm">
								
								<p style="font-size: 0.8em; color: red">${error}</p>
								<form action="<c:url value="/signin" />" method="post">
									<table>
										<tr>
											<th><label for="mailAddr">Email: </label></th>
											<td><input type="email" name="username" id="mailAddr"
												style="width: 150px;" /></td>
										</tr>
										<tr>
											<th><label for="password">Password: </label></th>
											<td><input type="password" name="password" id="password"
												style="width: 150px;" /></td>
										</tr>
										<tr>
											<th></th>
											<td><input type="checkbox" name="remember"
												id="remember_me" /> <label for="remember_me">Remember
													me</label></td>
										</tr>
										<tr>
											<td colspan="2"><input type="submit"
												class="btn btn-primary" value="Login" /> &nbsp;<a
												href="<c:url value="/signup/resetpassword" />">Forgot
													password?</a></td>
										</tr>
									</table>
								</form>
								<div>
									<br />
									<br /> <a href="<c:url value="/signup" />"> Create your
										account!<br /> (It's free and anyone can join.)
									</a>
								</div>
								
							</div>
						
							<div id="abstract">Learning-Log means your record of what
								you have learned and this system makes it easy to remember new
								vocabularies for foreign language learners . It allows you to
								log, share and reuse your learning log with others. Also, you
								can receive personalized quizzes and answers for your questions,
								and navigate surrounding learning log supported by augmented
								reality view. Learning-Log system can be used on Android mobile
								phones or/and on PC using any web browser.</div>
						</div>
							
						<!-- Top -->
						<div id="Center"></div>
						<!-- Center -->
							<div style="position: relative; right: -30px; top: -1px;">
<button class="btn btn-primary" type="button" style="WIDTH: 300px; HEIGHT: 30px" onclick="location.href='http://ll.is.tokushima-u.ac.jp/learninglog/signin'">English</button>

<button class="btn btn btn-info" type="button" style="WIDTH: 300px; HEIGHT: 30px" onclick="location.href='http://ll.is.tokushima-u.ac.jp/taiwan/signin'">Chinese</button>

<button class="btn btn-danger" type="button" style="WIDTH: 300px; HEIGHT: 30px" onclick=auth();>日本科学未来館</button>
</div>
					</div>
					<!-- Layout -->
				
				</div>
				<!-- ContentsContainer -->

			</div>
			<!-- Contents -->


		</div>
		<!-- Container -->
	</div>
	<!-- Body -->
	


</body><!-- 
<div style="position: relative; right: -700px; top: -320px;">
									<a href="http://ll.is.tokushima-u.ac.jp/taiwan/signin" target="_blank"><img
										src="<c:url value="/images/loginbanner.jpg"/>" alt="ＨＴＭＬタグ"
										border="0"></a>
								</div>
								<div style="position: relative; right: -760px; top: -370px;">
								<a href="http://ll.is.tokushima-u.ac.jp/taiwan/signin"><font size="6"><b>Chinese version</b></font>
								</a></div>
<div style="position: relative; right: -300px;">
	<a href="#" target="_blank"><img
		src="<c:url value="/images/llcollect.jpg"/>" alt="ＨＴＭＬタグ" border="0"></a>
</div> -->
 
<c:import url="include/footer.jsp" />

</html>
