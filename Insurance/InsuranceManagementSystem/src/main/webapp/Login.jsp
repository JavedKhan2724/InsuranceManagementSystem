<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
	<form method="POST" action="Login.jsp">
	     User Name:
		<input type="text" name="username"><br><br/>
		PassWord :
		<input type="text" name="password"><br><br/>
		
		<input type="submit" value="Login"><br>
	</form>
	
	<c:if test="${param.username != null && param.password != null }">
		<jsp:useBean id="beanInsuranceUsers" class="com.infinite.IMS.Insuranceusers" />
		<jsp:setProperty property="*" name="beanInsuranceUsers"/>
		<jsp:useBean id="beanDao" class="com.infinite.IMS.CustomerDAO"/>
		<c:set var="user" value="${param.username }"/>
		<c:set var="pwd" value="${param.password }"/>
		<c:set var="count" value="${beanDao.loginCheck(user, pwd) }" />
		<c:if test="${count==1}">
			<c:set var="user" value="${user}" scope="session" />
			<jsp:forward page="menu.jsp"/>
		</c:if>
		<c:if test="${count==0}">
			<c:out value="Invalid Credentials..."/>
		</c:if>
	</c:if>


</body>
</html>