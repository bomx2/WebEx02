<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/WebEx02/param" method="post">
		<h1>회원가입</h1>
		<label>아이디</label>
		<input type="text" name="id" id="id"><br><br>
		
		<label>비밀번호</label>
		<input type="password" name="password" id="password"><br><br>
		
		<label>성별</label>
		<input type="radio" name="gender" id="gender" value="남자" checked="checked">남자
		<input type="radio" name="gender" id="gender" value="여자">여자<br><br>
		
		<label>관심항목</label><br>
		<input type="checkbox" name="item" id="item" value="신발"> 신발
		<input type="checkbox" name="item" id="item" value="가방"> 가방
		<input type="checkbox" name="item" id="item" value="벨트"> 벨트
		<input type="checkbox" name="item" id="item" value="모자"> 모자
		<input type="checkbox" name="item" id="item" value="시계"> 시계
		<input type="checkbox" name="item" id="item" value="쥬얼리"> 쥬얼리<br><br>
		
		<label>직업</label><br>
		<select name="job" id="job" size="1">
			<option value="">선택하세요</option>
			<option value="학생">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select><br><br>
		
		<label>커피선호</label><br>
		<select name="interest" id="interest" size="5" multiple="multiple">
			<option value="에스프레소">에스프레소</option>
			<option value="로스팅">로스팅</option>
			<option value="생두">생두</option>
			<option value="원두">원두</option>
			<option value="핸드드립">핸드드립</option>
		</select><br><br>
		
		<label>자기소개</label><br>
		<textarea name="content" id="content" row="5" cols="40"></textarea><br><br>
		
		<input type="submit" value="전송"><br><br>
	</form>
</body>
</html>