<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
List<Map<String, Object>> articleRows = (List<Map<String, Object>>) request.getAttribute("articleRows");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>게시물 목록</title>
</head>
<body>

	<a href="https://www.naver.com" target="_blank">네이버</a>
	<a href="http://localhost:8081/JSP_AM_2024_01/article/list"
		target="_blank">버튼</a>
	<a href="/JSP_AM_2024_01/article/list" target="_blank">버튼</a>
	<a href="detail" target="_blank">디테일</a>

	<h2>게시물 목록</h2>

	<table style="border-collapse: collapse; border-color: green"
		;  border="1px">
		<thead>
			<tr>
				<th>번호</th>
				<th>작성날짜</th>
				<th>제목</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Map<String, Object> articleRow : articleRows) {
			%>
			<tr style="text-align: center;">
				<td><%=articleRow.get("id")%></td>
				<td><%=articleRow.get("regDate")%></td>
				<td><a href="detail?id=<%=articleRow.get("id")%>"><%=articleRow.get("title")%></a></td>
				<td><a href="doDelete?id=<%=articleRow.get("id")%>">del</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>



</body>
</html>