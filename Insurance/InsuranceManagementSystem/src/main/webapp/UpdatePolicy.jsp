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
<c:if test="${param.id!=null }">
<c:set var="pid" value="${param.id }"/>
</c:if> 
<c:if test="${param.policyId!=null }">
<c:set var="pid" value="${param.policyId }"/>
</c:if>
<jsp:useBean id="dao" class="com.infinite.IMS.PolicyDAO"/>
<c:set var="policy" value="${dao.searchById(pid)}" />
<form action="UpdatePolicy.jsp">
      <center>

			Policy Id :
			<input type="text" name="policyId" value="${pid}"><br/><br/>
			Policy Name :
			<input type="text" name="policyName" value="${policy.policyName}"/><br/><br/>
			Policy Type :
			<input type="text" name="policyType"/><br/><br/>
			Premium Amount :
			<input type="text" name="premiumAmount"/><br/><br/>
			Pay Mode :
			<input type="text" name="payMode"/><br/><br/>
			Term :
			<input type="number" name="term"/><br/><br/>
			<input type="submit" value="Update"/>
			
			
        </center>
</form>

	  <c:if test="${param.policyId !=null && param.policyName !=null}">
      <jsp:useBean id="beanPolicy" class="com.infinite.IMS.Policy"/>
      
      <jsp:setProperty property="*" name="beanPolicy"/>
      <jsp:useBean id="daoPolicy" class="com.infinite.IMS.PolicyDAO" />

      <c:out value="${dao.updatePolicy(beanPolicy) }"></c:out>
      <c:redirect url="ShowPolicy.jsp"></c:redirect>
	</c:if>





</body>
</html>