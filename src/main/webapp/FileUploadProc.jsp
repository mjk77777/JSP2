<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<%
	request.setCharacterEncoding("utf-8");

	//프로젝트 내에 만들어질 폴더를 저장할 이름 변수 선언(진짜 서버 어디에 만들어질거냐?)
	String realfolder = "";
	
	//실제 만들어질 폴더명을 설정
	String savefolder="/upload";
	
	//한글설정
	String encType = "utf-8";
	//저장될 파일 사이즈 설정
	int maxSize = 1024*1024*5; //5mega
	
	//파일이 저장될 경로값을 읽어오는 객체
	ServletContext context = getServletContext();
	realfolder = context.getRealPath(savefolder);
	
	try{
		//클라이언트로부터 넘어온 데이터를 저장해주는 객체 (MultipartRequest 객체 => cos.jar 파일이 꼭 있어야 돼)
		MultipartRequest multi = new MultipartRequest(request, realfolder, maxSize, encType,
				new DefaultFileRenamePolicy());//파일이름 겹칠 때 변경을 자동으로
%>
	당신의 이름은 <%=multi.getParameter("name") %>
				
<%
	out.println(realfolder);
	}catch(Exception e){
		e.printStackTrace();
	}

%>

</body>
</html>