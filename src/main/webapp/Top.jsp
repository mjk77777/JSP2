<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>
	<table width="800" >
	<!-- Top -->
		<tr height="100">
			<!-- 로고 이미지 -->
			<td colspan="2" align="center" width="266">
				<img src="img/캠핑.png" alt="이미지" width="150" height="70">
			</td>
			<td colspan="5" align="center">
				<font size="10"> 낭만 캠핑 </font>
			</td>
		</tr>
		<!-- 메뉴 -->
		<tr height="50">
			<td width="110" align="center">텐트</td>
			<td width="110" align="center">식기</td>
			<td width="110" align="center">의자</td>
			<td width="110" align="center">탁자</td>
			<td width="110" align="center">음식</td>
			<td width="110" align="center">기타</td>	
			<td width="140" align="center"><%= request.getParameter("id")+ "님 어서오세요" %></td>	
		</tr>
			
	
	</table>

</body>
</html>