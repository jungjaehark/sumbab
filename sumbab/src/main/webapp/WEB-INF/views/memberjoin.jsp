<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html> <html> <head> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>SUMBAB 회원가입</title> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head> 
<body>
 <article class="container"> 
 	
	<h3>회원가입</h3>


 <form action="memberjoin" method="post" role="form" id="usercheck" name="member"> 
 <table border="1" align="center" width="500" height="500">
			<tr>
				<td colspan="4" height="100" align="center">회원가입</td>
			</tr>
			<tr>
				<td colspan="1" height="100" align="center">ID</td>
				<td colspan="2" height="100" align="center">
				<input type="text" name="id" id="id" placeholder="id">
				</td>
				<td align="center">
				<input id="idCheck" type="button" onclick="idCheck()" value="중복확인"/>
				</td>
			</tr>
			<tr>
				<td colspan="1" height="100" align="center">Password</td>
				<td colspan="3" height="100" align="center">
				<input type="password" id="pwd" name="pwd" placeholder="password">
				</td>
			</tr>
			
			<tr>
				<td>회원분류</td>
				<td>
				<select name="classify"> 
				<option value="">분류</option>
				<option value="1">일반회원</option>
				<option value="2">가게관리회원</option>
				</select>
				</td>
			</tr>
			<tr>
				<td colspan="1" height="100" align="center">E-mail</td>
				<td colspan="3" height="100" align="center">
				<input type="text" name="email" id="email" placeholder="E-mail">
				</td>
			</tr>
			<tr>
				<td colspan="4" height="100" align="center"><input type = "submit" value="가입하기"></td>
			</tr>
		</table>
		</form>
	</article> 
</body>
<script type="text/javascript">
function idCheck(id){
	id = $("#id").val();
	
	$.ajax({
	    url: '/memberjoin/idCheck',
	    type: 'POST',
	    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
	    contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
	    data: String ,

	    success: function(data){
	         if(data == ""){
	         console.log("아이디 없음");
	         alert("사용하실 수 있는 아이디입니다.");
	         }else{
	         	console.log("아이디 있음");
	         	alert("중복된 아이디가 존재합니다.");
	         }
	    },
	    error: function (){        
	                      
	    }
	  });


}
</script> 
</html>
