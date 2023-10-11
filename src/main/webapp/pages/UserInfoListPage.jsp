<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="obj.UserInfoObj"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userInfoList</title>
</head>
<body>

	<h2>UserInfo List</h2>
	<table border="1">
		<thead>
			<tr>
				<th>メールアドレス</th>
				<th>ユーザID</th>
			</tr>
		</thead>
		<form action="/ServletSystem/UserInfoListController" method="post">
		<input id="email" class="text" type="email" name="email">
		<input type="submit" name="search" value="検索">
		</form>
		<tbody>
			<%
			List<UserInfoObj> userInfoList = (List<UserInfoObj>) request.getAttribute("userInfoObj");

			for (UserInfoObj user : userInfoList) {
			%>
			<tr>
				<td><em><%=user.getEmail()%></em></td>
				<td><em><%=user.getUserId()%></em></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>