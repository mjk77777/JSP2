<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<div align="center">
		<table border="1" width="800">
		
		<!-- top -->
			<tr height="150">
				<td align="center" colspan="2"> 
				<!-- jsp include 지시어와 jsp include 액션태그의 차이점!!!  -->
				<!-- 둘다 페이지를 불러오지만 include 액션 태그는 +데이터 넘길 수 있어  - ->
					<!-- include 액션 태그 특징 : 각각 따로 돌아. Top.jsp 먼저 실행하고 나중에 합쳐 => 한번에 컴파일했으면 null 나옴   -->
					<jsp:include page="Top.jsp">
						<jsp:param value="kmj" name="id"/>
					</jsp:include>
					
					<%-- <%@ include file="Top.jsp"  모양은 나오지만 data는 안 넘어가. null값 나옴--%> 
				</td>
			</tr>
			
		<!-- left -->
			<tr height="400">
				<td align="center" width="200">
					<jsp:include page="Left.jsp" />
				</td>
			
		<!-- center -->
				<td align="center" width="600">
					<jsp:include page="Center.jsp" />
				</td>
			</tr>
			
		<!-- Bottom -->
			<tr height="100">
				<td align="center" width="800" colspan="2">
					<jsp:include page="Bottom.jsp" />
				</td>
			</tr>	
			
		</table>
	
	</div>

</body>
</html>