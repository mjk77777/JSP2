<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResponseProc.jsp</title>
</head>
<body>

	<h2>이 페이지는 로그인 정보가 넘어오는 페이지입니다!</h2>
	<%
		request.setCharacterEncoding("UTF-8"); // POST방식일때 한글 처리
		
		String id = request.getParameter("id"); // request 객체에 담겨진 사용자 정보 중 id만 추출
		
		//response.sendRedirect("ResponseRedirect.jsp"); // 흐름제어권이 "ResponseRedirect.jsp"페이지로 넘어감 + request 객체의 정보는 안 넘어감 // 밑의 h3태그는 실행도 안됨
		//response.sendRedirect("ResponseRedirect.jsp?id="+id); // 나오긴 하는데 객체 정보에서 추출하는 건 아니야
	%>
	<!-- 2번째 흐름제어 방법 : 위의 request 객체가 또 한번 넘어가 -->
	<!-- request 값을 임의적으로 변경가능:  request객체에선 aaaa로 받아도(로그인 창에서) mmmm으로 중간에 제어해서 결과는 mmmm으로 나옴  -->
	<!-- ResponseRedirect.jsp 실행 안되고, redirect.jsp 의 내용을 proc.jsp 에 뿌려줌  -->
	  <jsp:forward page="ResponseRedirect.jsp">
		<jsp:param value="mmmm" name="id"/>  
		<jsp:param value="010-1111-4444" name="phone"/>  
	  </jsp:forward>  
		
	<h3>아이디는 <%= id %></h3>

</body>
</html>