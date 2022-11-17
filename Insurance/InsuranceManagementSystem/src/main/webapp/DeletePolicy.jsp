<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Policy</title>
</head>
<body>
<c:set var="pid" value="${param.id}"/>
<jsp:useBean id="beanDao" class="com.infinite.IMS.PolicyDAO"/>
<c:out value="${beanDao.deletePolicy(pid)}"/>
<c:redirect url="ShowPolicy.jsp"></c:redirect>
</body>
</html>