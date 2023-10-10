<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="obj.UserInfoObj"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会員確認画面</title>
<title>楽天会員登録</title>
</head>

<body id="confirm">

	<style>
header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: 3px solid rgb(191, 0, 0);
}

.header-right {
	height: 57px;
}

.header-right img {
	height: 47px;
}

.header-left ul {
	list-style: none;
	margin: 0;
}

.header-left ul li {
	height: 20px;
}

#container {
	width: 850px;
	margin: auto;
	text-align: left;
}

#language {
	text-align: end;
	margin: 10px 0 5px 0;
}

#contents h2 {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_h1.gif)
		no-repeat;
	padding: 6px 5px 0 25px;
	margin-top: 0;
	margin-bottom: 15px;
}

.step {
	margin: 0 0 15px 135px;
	padding-bottom: 2px;
}

#step1 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step1_btm.gif)
		no-repeat 0 100%;
}

#step2 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step2_btm.gif)
		no-repeat 0 100%;
}

#step3 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step3_btm.gif)
		no-repeat 0 100%;
}

#step1 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step1.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

#step2 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step2.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

#step3 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step3.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

#step1 ul li, #step2 ul li, #step3 ul li {
	flex-basis: 250px;
}

.step ol {
	min-height: 33px;
}

* html .step ol {
	height: 33px;
}

#step1 ol {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step1.gif)
		no-repeat;
}

#step2 ol {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step2.gif)
		no-repeat;
}

#step3 ol {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step3.gif)
		no-repeat;
}

.step ol li {
	float: left;
	width: 138px;
	*width: 195px;
	padding: 12px 20px 0 42px;
	*padding: 12px 12px 0 50px;
	color: #BF0000;
	font-weight: bold;
}

* html .step ol li {
	width: 201px;
	padding: 12px 12px 0 42px;
}

.step ol li.current {
	color: #FFFFFF;
}

.step {
	margin: 0 0 15px 135px;
	padding-bottom: 2px;
}

#step1 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step1_btm.gif)
		no-repeat 0 100%;
}

#step2 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step2_btm.gif)
		no-repeat 0 100%;
}

#step3 {
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step3_btm.gif)
		no-repeat 0 100%;
}

#step1 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step1.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

#step2 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step2.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

#step3 ul {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_step3.gif)
		no-repeat;
	min-height: 33px;
	list-style: none;
	display: flex;
	align-items: flex-end;
}

h3.circle {
	margin: 30px 0 5px;
	padding-left: 18px;
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//icon_circle.gif)
		no-repeat 0 0.2em;
	font-size: 115%;
}

table {
	margin: 0;
	padding: 0;
	width: 100%;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

table.address {
	width: 100%;
	margin-bottom: 20px;
	border-bottom: 2px solid #ABABAB;
	border-collapse: separate;
	border-spacing: 0;
}

th {
	width: 200px;
	border-right: 1px solid #ABABAB;
	border-left: 2px solid #ABABAB;
	background: #F5F5F5;
}

th.yel {
	width: 200px;
	border-right: 1px solid #ABABAB;
	border-left: 2px solid #ABABAB;
	background: #FFFFCD;
}

th.head {
	padding: 10px;
	vertical-align: top;
	text-align: left;
	border-top: 2px solid #ABABAB;
}

span.right {
	float: right;
	color: #BF0000;
}

td {
	padding: 10px;
	vertical-align: top;
	text-align: left;
	border-top: 2px solid #ABABAB;
}

td input.text {
	width: 60%;
}

td.end {
	border-right: 2px solid #ABABAB;
}

td ul {
	list-style: none;
	display: flex;
	flex-direction: row;
	padding-left: 0;
	margin-top: 5px;
	margin-bottom: 0;
}

p.sub {
	margin-bottom: 5px;
	color: #000000;
	text-align: center;
}

p.submit {
	margin-bottom: 20px;
	text-align: center;
}

#ruleHead {
	padding: 5px;
	margin-bottom: 0;
	background: #BEBEBE;
	text-align: center;
}

#rule {
	background: #EBEBEB;
}

#rule div {
	height: 400px;
	overflow: auto;
	padding: 15px;
	background: #EBEBE4;
	border: 1px solid #7F9DB9;
}

input, select {
	margin: 0;
}

input:not([type="image" i]) {
	box-sizing: border-box;
}

input[type="text" i] {
	padding: 1px 2px;
}

.tbl {
	border: 2px solid #ABABAB;
	padding: 15px;
}

h3.red {
	background-color: rgb(255, 0, 0);
	text-align: left;
}

.address-red {
	width: 450px;
}

.emailerrormes, .emailkakuninerror, .emailkakuninerrormes,
	.userIderrormes, .passWorderror, .passWorderrormes, .seierrormes,
	.meierrormes, .seiKataerrormes, .meiKataerrormes {
	/* display: none; */
	
}

.emailerror, .emailkakuninerror, .userIderror, .passWorderror, .seierror,
	.meierror, .seiKataerror, .meiKataerror {
	display: none;
}

.show {
	display: inline-block;
}

hr {
	color: sienna;
}

p {
	margin-left: 60px;
	margin-right: 60px;
}

body {
	background-image: url("images/back40.gif");
}

.right-align {
	float: right;
	margin-left: 10px;
	ul
	.a
	{list-style-type
	:
	circle;
}

}
h2 {
	font-size: 16px;
	text-align: right;
}

.custom-text {
	background: linear-gradient(to bottom, #D0D0D0, #FFFFFF);
	font-weight: bold;
	font-size: 1.2em;
	margin-left: 100px;
	margin-right: 100px;
	text-indent: 30px;
	border-bottom: 3px solid #707070;
}

#rcorners1 {
	border-radius: 25px;
	background: #B00000;
	padding: 20px;
	width: 200px;
	height: 30x;
	color: white;
	margin-left: 100px;
	margin-right: 100px;
	display: flex;
	align-items: center;
}

#rcorners1::before {
	content: '①';
	color: #B00000;
	background: white;
	margin-right: 5px;
}

.triangle {
	width: 0;
	height: 0;
	border-left: 15px solid #B00000;
	border-top: 15px solid transparent;
	border-bottom: 15px solid transparent;
}

div#contents {
	margin: 5px 0 30px;
	color: #333333;
}

h5 {
	margin-left: 100px;
	font-size: 16px;
	text-align: left;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

ol {
	list-style: none;
}

body {
	font-size: 13px;
	line-height: 1.4;
}

* html body {
	font-size: 82%;
}

*:first-child+html body {
	font-size: 82%;
}

h1, h2, h3, h4, h5, h6, div, p, pre, ul, ol, dl, dt, dd, address, form,
	blockquote {
	margin: 0;
	padding: 0;
	display: block;
	font-size: 100%;
}

table, caption, td, th {
	margin: 0;
	padding: 0;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

hr {
	display: none;
}

img, a img {
	border: none;
}

ul, ol {
	list-style: none;
}

iframe {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
}

form, fieldset, optgroup, label, legend {
	margin: 0;
	padding: 0;
	font-size: 100%;
	border: none;
}

legend {
	display: none;
}

input, select {
	margin: 0;
}

option {
	padding-right: 10px;
}

html>body label {
	margin-left: 4px;
}

span, em, strong, dfn, code, samp, kbd, var, cite, abbr, acronym, q, br,
	ins, del, a, img, object {
	margin: 0;
	padding: 0;
	border: 0;
	font-style: normal;
	font-weight: inherit;
	font-size: 100%;
}

em, strong {
	font-weight: bold;
}

acronym, abbr {
	cursor: help;
}

/
a:link {
	color: #0000FE;
	text-decoration: underline;
}

a:visited {
	color: #0000FE;
	text-decoration: underline;
}

a:hover {
	color: #0000FE;
	text-decoration: none;
}

body {
	font-size: 13px;
	line-height: 1.4;
}

* html body {
	font-size: 82%;
}

*:first-child+html body {
	font-size: 82%;
}

h1, h2, h3, h4, h5, h6, div, p, pre, ul, ol, dl, dt, dd, address, form,
	blockquote {
	margin: 0;
	padding: 0; /* margin&padding reset */
	display: block;
	font-size: 100%;
}

table, caption, td, th {
	margin: 0;
	padding: 0;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

hr {
	display: none;
}

img, a img {
	border: none;
	ul
	,
	ol
	{
	list-style
	:
	none;
}

table, caption, td, th {
	margin: 0;
	padding: 0;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	text-indent: initial;
	white-space: normal;
	line-height: normal;
	font-weight: normal;
	font-size: medium;
	font-style: normal;
	color: -internal-quirk-inherit;
	text-align: start;
	border-spacing: 2px;
	border-color: grey;
	font-variant: normal;
}

div.additionBox {
	margin-bottom: 15px;
	padding: 8px 10px 6px;
	background: #FFEFEF;
	border: 1px solid #BF0000;
}

div.additionBox dl {
	padding-right: 20px;
}

div.additionBox dl dt {
	color: #BF0000;
	font-weight: bold;
	font-size: 115%;
}

}
div.additionBox p input {
	min-width: 180px;
	font-size: 115%;
}

line-height: 1.4 ; text-align: left ; color: #333333 ; padding: 0 ;
	display: block ; margin: 30px 0 5px ; padding-left: 18px ; background: url( 
	 ../../img /id //icon_circle.gif) no-repeat 0 0.2em
	 ; font-size: 115 %; margin: 0 ; padding: 0 ; empty-cells: show ;
	font-size: 100 %; width: 100 %; margin-bottom: 20px ; border-bottom: 2px solid #ABABAB 
	 ; border-collapse: separate ; border-spacing: 0 ; empty-cells: show ;
	font-size: 100 %; border-collapse: separate ; border-spacing: 0 ;
	empty-cells: show ; font-size: 100 %; border-collapse: separate ;
	border-spacing: 0 ; line-height: 1.4 ; padding: 0 ; display: block ;
	font-size: 100 %; width: 850px ; margin: auto ; text-align: left ;
	table.address td.note {
	width: 7.5em;
	border-right: 2px solid #ABABAB;
}

table.address td {
	padding: 10px;
	vertical-align: top;
	text-align: left;
	border-top: 2px solid #ABABAB;
}

table {
	margin: 0;
	padding: 0;
	width: 100%;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

h3.red {
	background-color: rgb(255, 0, 0);
	text-align: left;
}

.address-red {
	width: 450px;
}

.show {
	display: inline-bl* {
    box-sizing: border-box;
}

body {
	width: 1647px;
	margin: auto 8px;
	font-size: 13px;
	line-height: 1.4;
}

/* Container */
#container {
	width: 850px;
	margin: auto;
	text-align: left;
}

#language {
	text-align: end;
	margin: 10px 0 5px 0;
}

#contents h2 {
	background: url(https://grp01.id.rakuten.co.jp/com/img/id//bg_h1.gif)
		no-repeat;
	padding: 6px 5px 0 25px;
	margin-top: 0;
	margin-bottom: 15px;
}

h3.circle {
	margin: 30px 0 5px;
	padding-left: 18px;
	background:
		url(https://grp01.id.rakuten.co.jp/com/img/id//icon_circle.gif)
		no-repeat 0 0.2em;
	font-size: 115%;
}

table {
	margin: 0;
	padding: 0;
	width: 100%;
	border-collapse: collapse;
	empty-cells: show;
	font-size: 100%;
}

table.address {
	width: 100%;
	margin-bottom: 20px;
	border-bottom: 2px solid #ABABAB;
	border-collapse: separate;
	border-spacing: 0;
}
</style>
<body>

	<div align="center">

		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td width="50%">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td valign="middle"><h1 style="margin: 5px; padding: 0">
									<a href="https://www.rakuten.co.jp/"><img
										src="https://static.id.rakuten.co.jp/static/com/img/id/Rakuten_pc_32px@2x_wm.png"
										alt="楽天" width="129" height="47" border="0"></a>
								</h1></td>
						</tr>
					</table>
				</td>
				<td width="50%" style="text-align: right; font-size: 13px">
					<div>
						<a href="https://www.rakuten.co.jp/" target="_top"
							style="font-weight: bold">楽天市場</a>
					</div>
					<div style="margin-top: 5px;">
						<a href="https://ichiba.faq.rakuten.net" target="_top">ヘルプ</a>
					</div>
				</td>
			</tr>
		</table>

		<table bgcolor="#bf0000" border="0" cellpadding="0" cellspacing="0"
			width="100%" style="display: block; margin-bottom: 10px;">
			<tr>
				<td><img
					src="https://jp.rakuten-static.com/1/im/ci/header/t.gif" alt=""
					height="3" width="1"></td>
			</tr>
		</table>


	</div>


	<hr style="border: 2px solid rgb(200, 0, 0);"></hr>

	<h2>
		日本語|<a href="English">English</a>|<a href="簡体中文">簡体中文</a>
	</h2>


	<h3 class="custom-text">楽天会員登録</h3>

	<br>

	<%
	// 获取在Servlet中设置的user属性
	UserInfoObj user = (UserInfoObj) request.getAttribute("userInfoObj");
	%>
	<form name="Regist1Form" method="post"
		action="/ServletSystem/ConfirmationController" autocomplete="off">
		<input type="hidden" name="service_id" value="top">


		<div id="step1" class="step">
			<ol class="clear">
				<li class="current">会員情報の入力</li>
				<li class="current">入力内容の確認</li>
				<li>登録完了</li>
			</ol>
		</div>


		<h3 class="circle" class="right">メールアドレス/ユーザーID/パスワード</h3>
		<div align="center">
			<div align="center">
				<table class="address">
					<tbody>
						<tr>
							<th class="head">メールアドレス
							<td><em><%=user.getEmail()%></em></td>

							<span class="emailerrormes"
								style="color: #ff0000; font-weight: bold;"></span>
							<br>

							</td>
							<td class="end"><a href=""></a></td>
							</th>
						</tr>

						<tr>
							<th class="head">ユーザID
							<td><em><%=user.getUserId()%></em></td>
							<td class="end"><a href=""></a></td>
							</th>
						</tr>



						<span class="iderrormes"
							style="color: #ff0000; font-weight: bold;"></span>
						<br>

						<!--<img class="iderror" src="./images/arrow32.gif" width="32" height="11" alt="">//-->
						<span class="iderrormes"
							style="color: #ff0000; font-weight: bold;"></span>
						<br>
						<tr>
							<th class="head">パスワード
							<td><em><%=user.getPassword()%></em></td>
							<td class="end"><a href=""></a></td>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>







		<h3 class="circle">お客様の基本情報</h3>
		<table class="address">
			<tbody>
				<tr>
					<th class="head">氏名
					<td class="end"><em> <span><%=user.getNameSei()%></span>
							<span><%=user.getNameMei()%></span>
					</em></td>
					<td class="end"><a href=""></a></td>
					</th>
				</tr>

				<tr>
					<th class="head">氏名（フリガナ）
					<td class="end"><em><%=user.getNameSeiKata()%> <%=user.getNameMeiKata()%></em></td>
					<td class="end"><a href=""></a></td>
					</th>
				</tr>
			</tbody>
		</table>


		<p>
			<input type="submit" name="execMethod" value="<<入力画面に戻って変更する">
		</p>
		<div class="tbl">
			<p>
				<img src="./images/icn_mail.gif" alt=""> <b>楽天会員ニュース（週1回～2回配信）</b><br>
				楽天会員ニュースは、楽天グループのキャンペーンやイベント情報などをご案内するメールマガジンです。<span
					style="color: #bf0000;"><b>楽天会員情報にご登録されたメールアドレス宛</b></span>
				に楽天グループ株式会社よりお送りいたします。<br> <br>
				※「購読する」をチェック頂いた方には、ご自身のポイント獲得状況が確認できる「ポイント獲得実績のお知らせ」もお届けします。<br>
				※楽天会員ニュース・ポイント獲得実績のお知らせは購読管理ページからいつでも配信停止/再開できます。<br> <br>
				購読を希望されない場合は<span style="color: #bf0000;"><b>「購読する」のチェックを外してください。</b></span>
			</p>
			<input type="checkbox" checked><b> 購読する</b>
		</div>
		<p class="sub">
			記の情報に間違いがなければ、「登録する」ボタンを押して、登録を完了してください。<br>
			入力画面に戻って変更する」ボタンを押すと、入力画面に戻ります。<br>
		</p>

		<p class="submit">
			<input type="submit" name="execMethod" value="登録する"
				onclick="completionFunc()">
		</p>
		<p style="text-align: center;">
			<font size="-1"><a href="https://privacy.rakuten.co.jp/"
				target="_blank">個人情報保護方針</a></font><br>
		<hr size="1" style="display: block;" />

		<font size="-1">&copy; Rakuten Group, Inc.</font> <br> <br>
		</div>

	</form>

</body>

</html>