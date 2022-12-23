<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<%@ include file="topmenu.jsp"%>
	<section>
		<div class="title">투표하기</div>
		<form name="frm" action="insert">
			<div class="wrapper">
				<table>
					<tr>
						<th>주민번호</th>
						<td><input type="text" name="v_jumin"></td>
					</tr>
					<tr>
						<th>성명</th>
						<td><input type="text" name="v_name"></td>
					</tr>
					<tr>
						<th>투표번호</th>
						<td><select name="m_no">
								<option></option>
								<option value="1">[1]김후보</option>
								<option value="2">[2]이후보</option>
								<option value="3">[3]박후보</option>
								<option value="4">[4]조후보</option>
								<option value="5">[5]최후보</option>
						</select></td>
					</tr>
					<tr>
						<th>투표시간</th>
						<td><input type="text" name="v_time"></td>
					</tr>
					<tr>
						<th>투표장소</th>
						<td><input type="text" name="v_area"
							placeholder="제1투표장,제2투표장 중 선택"></td>
					</tr>
					<tr>
						<th>유권자 확인</th>
						<td><input type="radio" name="v_confirm" value="Y">확인
							<input type="radio" name="v_confirm" value="N">미확인</td>
						<!-- 투표자 검수 NULL 값 뜨는데 이거 모르겠음;  -->

					</tr>
					<tr>
						<td colspan="2">
							<button class="btn" type="submit"
								onclick="fn_submit(); return false;">투표하기</button>
							<button class="btn" type="reset"
								onclick="alert('정보를 지우고 처음부터 다시 입력합니다.')">다시하기</button>
				</table>
			</div>
		</form>
	</section>
	<%@ include file="footer.jsp"%>
</body>
</html>