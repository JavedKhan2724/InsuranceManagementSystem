<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
</style>
</head>
<body>

<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<form>
      <center>

			<label>Customer Id:</label>			
			<input type="text" name="customerId"/><br/><br/>
			Customer Name:
			<input type="text" name="customerName"/><br/><br/>
			Customer Designation:
			<input type="text" name="customerDesignation"/><br/><br/>
			Customer Email:
			<input type="text" name="customerEmail"/><br/><br/>
			Customer Address
			<input type="text" name="customerAddress"/><br/><br/>
			Customer Contact
			<input type="number" name="customerContact"/><br/><br/>
			<input type="submit" value="Update Customer"/>
			
			
        </center>
</form>

<c:if test="${param.customerId !=null && param.customerName !=null}">
      <jsp:useBean id="beanCustomer" class="com.infinite.IMS.Customer"/>
      
      <jsp:setProperty property="*" name="beanCustomer"/>
      <jsp:useBean id="dao" class="com.infinite.IMS.CustomerDAO" />
      <c:out value="${dao.updateCustomer(beanCustomer) }"></c:out>
     
</c:if>




</body>
</html>