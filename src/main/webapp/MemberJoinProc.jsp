<%@page import="bean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

	<div align="center">
		<%
			request.setCharacterEncoding("UTF-8");
			//String id = request.setParameter("id"); => 이런 식으로 쓰면 변수가 많을 때 힘들어
		%>
		<!-- request로 넘어온 데이터를 javaBeans와 맵핑 시켜주는 useBean  -->
			<!-- id는 bean 클래스를 지칭하는 레퍼런스 명 , class: bean 패키지에 있는 MemberBean 클래스   -->
			
		<jsp:useBean id="mbean" class="bean.MemberBean"><!-- (=객체 생성과 같은 효과) MemberBean mbean = new MemberBean()  --><!--앞으로 mbean을 통해 객체에 접근  -->
			<!--jsp 내용을 javaBean 클래스(MemberBean) 에 데이터를 맵핑(=넣어줌)  -->
			<%-- <jsp:setProperty name="mbean" property="id" /> --%> <!-- 각각 다 따로 해줘야 돼  -->
			<jsp:setProperty name="mbean" property="*" /> <!-- * : 자동으로 모두 맵핑시켜주세요  -->
		</jsp:useBean>
		
		<h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean"/> </h2>
		<h2>당신의 패스워드는 <jsp:getProperty property="pass" name="mbean"/> </h2>
		<h2>당신의 이메일은 <jsp:getProperty property="email" name="mbean"/> </h2>
		<h2>당신의 전화번호는 <jsp:getProperty property="tel" name="mbean"/> </h2>
		<h2>당신의 주소는
			<%= mbean.getAddr() %>	 <!-- 위에서 useBean을 통해 "객체 생성"해줬기 때문에 메소드 사용가능 -->
		</h2>
	
	</div>
	
	

</body>
</html>