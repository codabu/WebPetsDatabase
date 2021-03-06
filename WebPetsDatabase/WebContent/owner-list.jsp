<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<title>Owner List</title>
		
		<link rel="stylesheet" type="text/css" href="mainStyle.css" />
		
	</head>
	
	<body>
	
		<form method="post" action="ownerNavServlet">
		
			<table>
			
				<c:forEach items="${requestScope.allOwners}" var="currentOwners">
				<tr>
				
					<td><input type="radio" name="id" value="${currentOwners.id}"></td>
					
					<td><h4>Owner: ${currentOwners.name}</h4></td>
					
				</tr>
					
						<!-- Made these changes so that the newly added pets show without having to restart the server -->
						<c:forEach items="${requestScope.allPets}" var="currentPet">
  							<c:if test = "${currentPet.owner.id == currentOwners.id}">
  								<tr><td></td><td>Pet: ${currentPet.name}, is a ${currentPet.type}, adopted on ${currentPet.adoptionDate}</td></tr>
  							</c:if>
  						</c:forEach>
							
				</c:forEach>
				
			</table>
			
			<input type ="submit" value ="Edit An Owner" name="doThisToOwner">
			
			<input type ="submit" value ="Delete An Owner" name="doThisToOwner">
			
			<input type="submit" value ="Add An Owner" name ="doThisToOwner">
			
			
		</form>
		
		<p><a href="addPetPageServlet">Add a pet</a></p>
	
		<p><a href="index.html">Back To Home Page</a></p>
	
	</body>
	
</html>