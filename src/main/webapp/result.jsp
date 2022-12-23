<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "DTO.Member"%>
<%
request.setCharacterEncoding("UTF-8");
ArrayList<Member> list = new ArrayList<Member>();
list = (ArrayList<Member>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>	
	<%@ include file="topmenu.jsp" %>
	<section>
		<div class="title">후보자 등수</div>
		<div class="wrapper">
			<table style="width:900px">
				<tr>
					<th>후보번호</th>
					<th>성명</th>
					<th>총투표건수</th>
				</tr>
				<%
				for(Member m : list){
				%>
				<tr>
					<td><%=m.getM_no() %></td>
					<td><%=m.getM_name() %></td>
					<td><%=m.getCount() %></td>
				</tr>	
				<%
				}
				%>
			</table>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>