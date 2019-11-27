<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pattern</title>
</head>
<body>
<% 
int n=0;
if((request.getParameter("num")!=""))
n=Integer.parseInt((request.getParameter("num")));
			int i,j;
			for(i=1;i<=n;i++)
			{
				for(j=1;j<=i;j++)
					out.print(j+" ");
				out.println("<br>");
			}
		%>

<c:set var="num" scope="session" value="${param.num}"/>
<c:forEach var="i" begin="1" end="${num}">
	<c:forEach var="j" begin="1" end="${i}">  
	   <c:out value="${j} "/>
	</c:forEach>
	<br>
</c:forEach>
</body>
</html>