<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSTL library</title>
</head>
<body>
	<h1>Using JSTL function tags</h1>
	<ul>
		<li>fn:contains()</li>
			<c:set var="str" value="Welcome to my page"/>
			<c:out value="${'The value of the string is: ' }"/>
			<c:out value="${str}"/>
			<c:if test="${fn:contains(str, 'page')}">
				<p>The string contains the word "page"</p>
			</c:if>
		<li>fn:containsIgnoreCase()</li>
			<c:if test="${fn:contains(str, 'page')}">
				<p>The string contains the word "page"</p>
			</c:if>
			<c:if test="${fn:containsIgnoreCase(str, 'PAGE')}">
				<p>The string contains the word "PAGE"</p>
			</c:if>
		<li>fn:endsWith()</li>
			<c:if test="${fn:endsWith(str, 'page')}">
				<p>The string ends with the word "page"</p>
			</c:if>
		<li>fn:excapeXml()
			<c:set var="str1" value="Hello world!"/>
			<c:set var="str2" value="<text>Hello          world!</text>"/>
			
			<p>With escapeXml() Function:</p>
			<p>string-1 : ${fn:escapeXml(str1)}</p>
			<p>string-2 : ${fn:escapeXml(str2)}</p>
	
			<p>Without escapeXml() Function:</p>
			<p>string-1 : ${str1}</p>
			<p>string-2 : ${str2}</p>
		<li>fn:indexOf()
			<p>Index-1 : ${fn:indexOf(str1, "world")}</p>  
			<p>Index-2 : ${fn:indexOf(str2, "!")}</p>  
		<li>fn:trim()
			<p>String-1 Length is : ${fn:length(str1)}</p>  
  
			<c:set var="str2" value="${fn:trim(str2)}" />
			<p>String-2 Length is : ${fn:length(str2)}</p>
			<p>Final value of string is : ${str2}</p>
		<li>fn:startsWith()
			<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
			The string starts with "The": ${fn:startsWith(msg, 'The')}  
			<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  
		<li>fn:split()
			<c:set var="str1" value="This-is-a-good-day."/>  
			<c:set var="str2" value="${fn:split(str1, '-')}" />  
			<c:set var="str3" value="${fn:join(str2, ' ')}" />  
			  
			<p>String-3 : ${str3}</p>  
			<c:set var="str4" value="${fn:split(str3, ' ')}" />  
			<c:set var="str5" value="${fn:join(str4, '-')}" />  
			  
			<p>String-5 : ${str5}</p>  
				
		<li>fn:toLowerCase()
			<c:set var="string" value="Welcome to JSP Programming"/>  
			${fn:toLowerCase("HELLO,")}  
			${fn:toLowerCase(string)}
		<li>fn:toUpperCase()
		<c:set var="stringupper" value="welcome to jsp programming"/>
			<p>Before fn:toUpperCase : ${stringupper}</p>
			<p>Before fn:toUpperCase : ${fn:toUpperCase(stringupper)}</p>
			
		<li>fn:substring()<br/>
			<c:set var="string" value="This is the first string."/>  
			${fn:substring(string, 5, 17)}  
		<li>fn:substringAfter()<br/>
			<c:set var="string3" value="Hello How are you?"/>  
			${fn:substringAfter(string3, "Hello")} 
		<li>fn:length()
			<c:set var="str1" value="This is first string"/>  
			<c:set var="str2" value="Hello"/>  
			Length of the String-1 is: ${fn:length(str1)}<br>  
			Length of the String-2 is: ${fn:length(str2)}  
		<li>fn:replace()<br/>
			<c:set var="string20" value="pqr xyz abc PQR"/>  
			<p>Before replace: ${string20}</p>
			<p>After replace: ${fn:replace(string20, "pqr", "hello")}  </p>
		
		</ul>

</body>
</html>