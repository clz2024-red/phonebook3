<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>

<% 
	PersonVo personVo =(PersonVo)request.getAttribute("personVo");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>전화번호부</h1>

<h2>수정폼</h2>

<p>
	전화번호를 수정하려면<br>
	아래 항목을 기입하고 "수정" 버튼을 클릭하세요
</p>

<form action="/phonebook3/pbc" method="get">
	<div>
		<label>이름(name)</label>
		<input type="text" name="name" value="<%=personVo.getName()%>">
	</div>
	
	<div>
		<label>핸드폰(hp)</label>
		<input type="text" name="hp" value="<%=personVo.getHp()%>">
	</div>
	
	<div>
		<label>회사(company)</label>
		<input type="text" name="company" value="<%=personVo.getCompany()%>">
	</div>
	
	<input type="text" name="action" value="modify"><br>
	<input type="text" name="no" value="<%=personVo.getPersonId()%>"><br>
	<button type="submit">수정</button>
	
	
	
</form>

<br><br>
<a href="/phonebook3/pbc?action=list">리스트페이지로 이동</a>

</body>
</html>