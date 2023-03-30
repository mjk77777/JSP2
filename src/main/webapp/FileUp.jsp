<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<div align="center">
	<h2> 파일 업로드 </h2>
	<form action="FileUploadProc.jsp" method="post" enctype="multipart/form-data">
		<table style="width:350">
			<tr height="40">
				<td width="150"> 이름 </td>
				<td width="250"><input type="text" name="name"></td>
			</tr>
			<tr height="40">
				<td width="150"> 파일선택 </td>
				<td width="250"><input type="file" name="filedata"></td>
			</tr>
			<tr height="40">
				<td align="center" colspan="2">
					<input type="submit" value="파일업로드">
				</td>
			</tr>
			
		
	
	
	
	
		</table>
	</form>
</div>

</body>
</html>