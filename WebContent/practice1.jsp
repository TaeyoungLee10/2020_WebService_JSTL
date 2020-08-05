<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSTL library</title>
</head>
<body>
	<h1>Using JSTL core tags</h1>
	<ul>
		<li>c:out<br/>
			<c:out value="${'Welcome to my webpage!!!'}"/>
		<li>c:set<br/>
			<c:set var="Income" scope="session" value="${4000*4}"/>  
			<c:out value="${'This is the value of income: '}"/>
			<c:out value="${Income}"/>
		<li>c:remove<br/>
			<c:out value="${'This is the value of income(after using remove): '}"/>
			<c:out value="${Income}"/>
		<li>c:catch
			<c:catch var="catch_error">
				<% int x= 2/0; %>
			</c:catch>
			<c:if test = "${catch_error != null}">
				<p>The type of exception is : ${catch_error}<br/>
					There is an exception: ${catch_error.message}
				</p>
			</c:if>
		<li>c:if<br/>
			<c:set var="var1" value="${100}"/>
			<c:set var="var2" value="${200}"/>
			<c:out value="${'The value of each variable are as follows:'}"/><br/>
			<c:out value="${'var1: '}"/><c:out value="${var1 }"/><br/>
			<c:out value="${'var2: '}"/><c:out value="${var2 }"/><br/>
			<c:if test="${var2>var1}">
				<p>var2 is larger than var1</p>
			</c:if>
		<li>c:choose,when,otherwise<br/><br/>
			<c:out value="${'If the value of variable var 1 is:'}"/><c:out value="${var1 }"/><br/>
			<c:choose>
				<c:when test="${var1<10}">
					<p> The variable var1 is a 1 digit number</p>
				</c:when>
				<c:when test="${var1<100}">
					<p> The variable var1 is a 2 digit number</p>
				</c:when>
				<c:when test="${var1<1000}">
					<p> The variable var1 is a 3 digit number</p>
				</c:when>
				<c:otherwise>
					<p> The variable var1 has more than 3 digits</p>
				</c:otherwise>
			</c:choose>
			<hr/>
				<c:out value="${'If the value of variable var 2 is:'}"/><c:out value="${var2 }"/><br/>
			<c:choose>
					<c:when test="${var2%2==0}">
						<p> The variable var2 is an EVEN number</p>
					</c:when>
				<c:otherwise>
					<p> The variable var2 is an ODD number</p>
				</c:otherwise>
			</c:choose>
			
		<li>c:forEach<br/><br/>
		<c:set var="count" value="${0}"/>
		<c:out value="${'The value of count before loop: '}"/><c:out value="${count}"/>
		<c:forEach var="i" begin="1" end="5">
			<c:set var="count" value="${count+1}"/>
		</c:forEach>
		<br/><c:out value="${'The value of count after loop: '}"/><c:out value="${count}"/>
		<li>c:forTokens<br/>
		<c:out value="${'Before using forTokens: '}"/><c:out value="${'Hello%world%Good%day'}"/><br/>
		<c:forTokens items="Hello%world%Good%day" delims="%" var="name">
			<c:out value="${name}"/><p>
		</c:forTokens>	
		<li>c:c:url<br/>
		<c:url value="practice1.jsp"/>
			
		<li>c:import<br/>
			<c:import var="data" url="https://www.javatpoint.com"/>  
			<c:out value="${data}"/>
			
	</ul>
</body>
</html>