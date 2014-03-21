<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html>
    <c:import url="../../include/head.jsp">
    	<c:param name="title" value="User List" />
    </c:import>
    <body id="page_diary_list">
    <div id="Body">
        <div id="Container">
            <c:import url="../../include/header.jsp" />
                <div id="Contents">
                    <div id="ContentsContainer">
                        <div id="LayoutC" class="Layout">
							<div id="Top">
                                <div id="information_21" class="parts informationBox">
                                    <div class="body">
                                    </div>
                                </div><!-- parts -->
                            </div><!-- Top -->
                            <div id="Center">
                                <div id="groupSearchFormLine" class="parts searchFormLine">
                                </div>
                                <div class="dparts searchResultList">
                                	<div class="parts">
                                        <div class="pagerRelative">
                                        </div>
                                        <div class="block">
                                        	<ul>
                                        		<li style="font-family: arial,sans-serif; font-size: 20px; font-weight:900">${category.name}
                                        		</li>
                                        		<li>
                                        			<a href="<c:url value="/admin/user/${user.id}/edit" />">Edit</a>
                                        			&nbsp;<a href="<c:url value="/admin/user" />">Return</a>
									<c:url value="/admin/user/${user.id}/edit" var="userUrl" />
                                    <form:form commandName="user" action="${userUrl}" method="post">
                                    <table>
                                    	<tr>
                                    		<th style="width: 25%"><label for="auth">Auth</label></th>
                                            <td>
                                            	<form:radiobutton path="auth" value="MEMBER" label="Member"/>
                                            	<form:radiobutton path="auth" value="ADMIN" label="Admin"/>
                                            </td>
                                    	</tr>
                                        <tr>
                                            <th style="width: 25%"><label for="pcEmail">Email</label></th>
                                            <td>
                                            	<form:input path="pcEmail" />
                                            	<form:errors path="pcEmail" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="password">Password</label></th>
                                            <td>
                                            	<input type="password" id="password" name="password" />
                                            	<form:errors path="password" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="passwordConfirm">Password Confirm</label></th>
                                            <td><input type="password" id="passwordConfirm" name="passwordConfirm" /></td>
                                        </tr>
                                        <tr>
                                            <th><label for="nickname">Nickname</label></th>
                                            <td><form:input path="nickname" /><form:errors path="nickname" /></td>
                                        </tr>
                                        <tr>
                                            <th><label for="firstName">Family Name</label></th>
                                            <td>
                                                <form:input path="firstName" /><form:errors path="firstName" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="lastName">Given Name</label></th>
                                            <td>
                                                <form:input path="lastName" /><form:errors path="lastName" />
                                            </td>
                                        </tr>
                                    </table>
                                    <input type="submit" value="Submit" />
                                    </form:form>
                                        		</li>
                                        	</ul>
                                        </div>
                                        <div class="pagerRelative">
                                            <p class="number"><!--7件中 1～7件目を表示--></p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- Center -->
                        </div><!-- Layout -->
                        <div id="sideBanner">
                            <%--
                            <form action="/member/changeLanguage" method="post"><label for="language_culture">言語</label>:
                                <select name="language[culture]" onchange="submit(this.form)" id="language_culture">

                                    <option value="en">English</option>
                                    <option value="ja_JP" selected="selected">日本語 (日本)</option>
                                </select><input value="diary/index" type="hidden" name="language[next_uri]" id="language_next_uri" /></form>
                            --%>
                        </div><!-- sideBanner -->
                    </div><!-- ContentsContainer -->
                </div><!-- Contents -->

                <c:import url="../../include/footer.jsp" />
            </div><!-- Container -->
        </div><!-- Body -->
    </body>
</html>