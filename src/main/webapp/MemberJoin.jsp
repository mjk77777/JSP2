<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

<div align="center">
	<h2>회원가입</h2>
	<form action="MemberJoinProc.jsp" method="post">
		<table style="width:500" border="1">
			<tr height="50">
				<td width="150" align="center"> 아이디 </td>
				<td width="350" align="center"><input type="text" name="id" size="40" placeholder="id를 입력하시오."> <!-- size 대신 maxlength 써도 돼  --></td>
			</tr>
			<tr height="50">
				<td width="150" align="center"> 비밀번호 </td>
				<td width="350" align="center"><input type="password" name="pass" size="40"
					 placeholder="영문과 숫자만 입력하시오"> 
			</tr>
			<tr height="50">
				<td width="150" align="center"> 이메일 </td>
				<td width="350" align="center"><input type="email" name="email" size="40" > 
			</tr>
			<tr height="50">
				<td width="150" align="center"> 전화번호 </td>
				<td width="350" align="center"><input type="tel" name="tel" size="40">
			</tr>
			<tr height="50">
				<td width="150" align="center"> 주소 </td>
				<td width="350" align="center"><input type="text" name="addr" size="40">
			</tr>
			<tr height="50">
				<td colspan="2" align="center"> 
					<input type="submit" value="가입">
			</tr>
		</table>
	</form>
	</div>

</body>
</html>