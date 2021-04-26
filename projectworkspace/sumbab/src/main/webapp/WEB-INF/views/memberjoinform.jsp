<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html> <html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>SUMBAB 회원가입</title> 
</head> 
<body>
 <article class="container"> 
 	
	<h3>회원가입</h3>

<div class="col-sm-6 col-md-offset-3">
 <form action="memberjoin" method="post" role="form" id="usercheck" name="member"> 
<div class="form-group"> 
	<label for="id">아이디</label> 
	<input type="text" class="form-control" id="id" name="id" placeholder="ID">
 	<div class="eheck_font" id="id_check"></div>
 </div>
 
<div class="form-group"> 
	<label for="pw">비밀번호</label> 
	<input type="password" class="form-control" id="pwd" name="pwd" placeholder="PASSWORD">
<div class="eheck_font" id="pw_check"></div>
</div>

<div class="form-group">
  <label for="pw2">비밀번호 확인</label>
  <input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="Confirm Password"> 
<div class="eheck_font" id="pw2_check"></div> 
</div> 

<div class="form-group"> 
	<label for="classify">회원분류</label> 
	<select name="classify"> 
	<option value="">분류</option>
	<option value="1">일반회원</option>
	<option value="2">가게관리회원</option>
	</select>
<div class="eheck_font" id="select_check"></div>
</div>


<div class="form-group"> 
	<label for="mem_email">이메일 주소
	</label> <input type="email" class="form-control" id="email" name="email" placeholder="E-mail"> 
<div class="eheck_font" id="email_check"></div>
 </div>

<div class="form-group text-center">
	<button type="submit" class="btn btn-primary">회원가입</button>
</div>
			</form> 
		</div> 
	</article> 
</body> 
</html>
