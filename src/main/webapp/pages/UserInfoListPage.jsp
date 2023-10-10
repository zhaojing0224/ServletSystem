<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="Regist1Form" method="post"
		action="/ServletSystem/UserInfoListController" autocomplete="off">
		<input type="hidden" name="service_id" value="top">
		<h2>UserInfo List</h2>

		<table border="1">
			<thead>
				<tr>
					<th>メールアドレス</th>
					<input id="email" class="text" type="email" name="email">
					<th>ユーザID</th>
				</tr>
			</thead>

		</table>
	</form>
</body>
</html>