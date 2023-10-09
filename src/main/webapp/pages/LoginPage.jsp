<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>会員登録画面</title>
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


	<form name="Regist1Form" method="post" action="/ServletSystem/LoginController">
		<input type="hidden" name="service_id" value="top">


		<div id="step1" class="step">
			<ol class="clear">
				<li class="current">会員情報の入力</li>
				<li>入力内容の確認</li>
				<li>登録完了</li>
			</ol>
		</div>


		<h3 class="circle" class="right">メールアドレス/ユーザーID/パスワード</h3>
		<div align="center">
			<div align="center">
				<table class="address">
					<tbody>
						<tr>
							<th class="head">メールアドレス<span class="right">必須</span>
							<td><em>< 半角英数字> <br> 他の会員が登録済みのメールアドレスは登録できません。<br>
									<input id="email" class="text" type="email" name="email">
									<br></td>






							<span class="emailerrormes"
								style="color: #ff0000; font-weight: bold;"></span>
							<br>



							</em>
							</td>
							<td class="end"><a href="">詳しいヘルプ</a></td>
							</th>
						</tr>




						<tr>
							<th class="head">ユーザID<span class="right">必須</span>
							<td><em>会員向けサービスにログインするときに使用します。<br> <input
									type="radio" id="onaji" name="check" checked value="off">
									<label for="onaji">メールアドレスをユーザIDとして使用</label><br> <br>
									<input type="radio" id="igai" name="check" value="on">
									<label for="igai">メールアドレス以外をユーザIDとして使用</label><br>
									<6文字以上・半角英数字> 数字だけにすることはできません<br> <input type="text"
									id="userId" name="userId" maxlength="100" size="50"
									class="text userid">



							</em></td>
							<td class="end"><a href="">詳しいヘルプ</a></td>
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
							<th class="head">パスワード<span class="right">必須</span>
							<td><em><6文字以上半角英数字><br> 「ユーザID」と同じものは登録できません<br>
									第三者によるログインを防ぐために、できるだけ複雑なものを設定してください。<br> <input
									type="password" name="password" maxlength="128" size="20"
									value="" class="text password" title="(例) 18f5ns1kzm">
									<br> <br>
							</em></td>
							<td class="end"><a href="">詳しいヘルプ</a></td>
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
					<th class="head">氏名<span class="right">必須</span>
					<td class="end"><em>入力情報に誤りがあると、パスワード再設定が正しく行えない場合があります。
							ご自身の氏名をお間違えないように登録してください。<br>
							<ul>
								<li><span>（姓）</span><input id="sei" class="text-30"
									type="text" name="sei"></li>
								<li><span>（名）</span><input id="mei" class="text-30"
									type="text" name="mei"></li>
							</ul> <!--<img class="seierror" src="./images/arrow32.gif" width="32" height="11" alt="">-->
							<span class="seierrormes"
							style="color: #ff0000; font-weight: bold;"></span><br> <!--<img class="meierror" src="./images/arrow32.gif" width="32" height="11" alt="">-->
							<span class="meierrormes"
							style="color: #ff0000; font-weight: bold;"></span><br>
					</em></td>
					</th>
				</tr>
				<tr>
					<th class="head">氏名（フリガナ）<span class="right">必須</span>
					<td class="end"><em><全角カタカナのみ> <br>
							<ul>
								<li><span>（姓）</span><input id="seiKata" class="text-30"
									type="text" name="seiKata"></li>
								<li><span>（名）</span><input id="meiKata" class="text-30"
									type="text" name="meiKata"></li>
							</ul>
							<!--<img class="seiKataerror" src="./images/arrow32.gif" width="32" height="11" alt="">-->
							<span class="seiKataerrormes"
								style="color: #ff0000; font-weight: bold;"></span> <br>
							<!-- <img class="meiKataerror" src="./images/arrow32.gif" width="32" height="11" alt="">-->
							<span class="meiKataerrormes"
								style="color: #ff0000; font-weight: bold;"></span> <br></em></td>
					</th>
				</tr>
			</tbody>
		</table>
		<p class="submitNote">
			楽天会員への登録には、規約および<a target="_blank"
				href="https://privacy.rakuten.co.jp/">個人情報保護方針</a>への同意が必要です。
		</p>

		<p class="submit">
			<input type="submit" value="同意して次へ"
				onclick="nextFuction()">
		</p>


	</form>



	</div>
	<div align="center">



		<font size="-1"><a href="https://privacy.rakuten.co.jp/"
			target="_blank">個人情報保護方針</a></font><br>
		<hr size="1" style="display: block;" />

		<font size="-1">&copy; Rakuten Group, Inc.</font> <br> <br>
	</div>


	<script>
		function nextFuctionxx() {

			alert(9999);
			var emailValue = document.getElementById('email').value;
			var regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			if (!regexEmail.test(emailValue)) {

				alert('メールアドレスの形式が正しくありません。');

			}
			alert(emailValue);

			var userValue = document.getElementById('user').value;
			var regexUser = /^[a-zA-Z0-9]{6,}$/;
			if (!regexUser.test(userValue)) {

				alert('ユーザIDは半角英数字で6文字以上入力してください。');

			}
			alert(userValue);

			var passwordValue = document.getElementById('password')
					.getElementsByTagName('input')[0].value;

			if (passwordValue.length < 6) {

				alert('パスワードは6文字以上で入力してください。');

			}
			alert(passwordValue);

			var seiValue = document.getElementById('sei').value;
			var meiValue = document.getElementById('mei').value;

			if (seiValue.trim() === '' && meiValue.trim() === '') {
				alert('姓または名が入力されていません。');
			}

			var seiKataValue = document.getElementById('seiKata').value;
			var meiKataValue = document.getElementById('meiKata').value;

			var regexSeiKata = /^[\u30A0-\u30FF]+$/;
			var regexMeiKata = /^[\u30A0-\u30FF]+$/;
			if (!regexSeiKata.test(seiKataValue)
					&& !regexMeiKata.test(meiKataValue)) {

				alert('文字が全角カタカナで入力されていません。');

			}
			alert(seiKataValue);
			alert(meiKataValue);

			alert(6666);
		}
	</script>


</body>

</html>