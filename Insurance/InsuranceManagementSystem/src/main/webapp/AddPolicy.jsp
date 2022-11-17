<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	* {
  box-sizing: border-box;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
label{
  float: left;
  width: 10%;
  margin-top: 6px;
}
input {
  float: left;
  width: 20%;
  
  margin-top: 6px;
}
</style>
</head>
<body>
	<jsp:useBean id="dao" class="com.infinite.IMS.PolicyDAO" />
		<form  method="get" action="AddPolicy.jsp" >
			<label>Policy Name :</label>
			<input type="text" name="policyName" /> <br/><br/> 
			<label>Policy Type :</label>
			<input type="text" name="policyType" /> <br/><br/>
			<label>Premium Amount :</label>
			<input type="number" name="premiumAmount" /> <br/><br/>
			<label>PayMode :</label>
			<input type="text" name="payMode" /> <br/><br/>
			<label>Term :</label>
			<input type="text" name="term" /> <br/><br/>
			<input type="submit" value="Add policy">
			<br/>
			<c:if test="${param.premiumAmount!= null}">
				<jsp:useBean id="policy" class="com.infinite.IMS.Policy" />
 				<jsp:setProperty property="*" name="policy"/>
				<c:out value="${dao.addPolicy(policy)}" />
				<c:redirect url="ShowPolicy.jsp"></c:redirect>
			</c:if>	
	</form>
</body>
</html>