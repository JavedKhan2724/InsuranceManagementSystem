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
<jsp:useBean id="beanDao" class="com.infinite.IMS.PolicyDAO"/>
    <form method="get" action="SearchPolicy.jsp">
        <center>
        Policy Id :
            <input type="text" name="policyId" /> <br/><br/>
            <input type="submit" value="Search" />
        </center>
    </form>
    <c:if test="${param.policyId!=null}">
    <c:set var="policyId" value="${param.policyId}"/>
        <c:set var="policy" value="${beanDao.searchById(policyId)}"/>
        <c:if test="${policyId!=null}">
        Policy Id :  <b>
            <c:out value="${policy.policyId}"/></b> <br/>
        Policy Name : <b>
            <c:out value="${policy.policyName}"/></b> <br/>
        Policy Type : <b>
            <c:out value="${policy.policyType}"/></b> <br/>
        Premium Amount: <b>
            <c:out value="${policy.premiumAmount}"/></b> <br/>
        Pay Mode :<b>
        <c:out value="${policy.payMode}"/></b><br>
         Term :
        <c:out value="${policy.term}"/></b><br>
        Installment Amount Per Pay Mode :<b>
        <c:out value="${policy.installmentAmountPerPayMode}"/></b><br>
        Matured Amount :<b>
        <c:out value="${policy.maturedAmount}"/></b><br> 
        </c:if>
    </c:if>
</body>
</html>