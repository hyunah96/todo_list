<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		input::placeholder
		{
			color :white;
		}

	  	tr
	  	{
	  		text-align:center; 
	  		background-color:#AB82FF;
	  		height:50px;
	  	}
	  	td
	  	{
	  		border: none; 
	  		text-align:center; 
	  		background: transparent; 
	  		height:50; 
	  		font-size:30px;
	  	}
	</style>
	<script type="text/javascript">
		function test()
		{
		if(document.TodoList.id.value == "")
			{
				alert("할 일을 입력하세요!");	
			}
		}
	</script>
<meta charset="UTF-8">
<title>to-do list</title>
</head>
<body>
	<table >
		<caption>
			<h1>to-do list</h1>
		 <%
		 Date day = new java.util.Date();
		 String am_pm;
		 int hour = day.getHours();
		 int minute = day.getMinutes();
		 int second = day.getSeconds();
		 
		 if (hour / 12 == 0)
		 {
			am_pm = "AM";
		 }
		 else
		 {
			 am_pm = "PM";
			 hour = hour - 12;
		 }
		 String CT = hour + ":" + minute + ":" + second + am_pm;
		 out.println("현재 접속 시각 : " + CT);
	 	%>
	 	 <%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
	
		%>
		</caption>
		  <tr>
		  <form name="TodoList" action="todo_index.jsp" method="post">
		  	
		  	<td>
		  <input type="checkbox" style="zoom:1.5;" name="check" value="y" >
		  </td>
		  	 <!--checked를 붙이면 자동으로 체크상태가 됨 -->
		  	 <td>
    		 <input type="text" name="id" placeholder="할 일을 입력하세요" 
    		 	style="border: none; text-align:center; background: transparent; height:50; font-size:30px;"> 
    		 	</td>
    		 	<td>
    		 <input type="submit" onclick="test()" style="zoom:1.2;" value="+">
    		 </td>
		 </form>
		  </tr>
		 <c:forEach var="item" items="${items}">
		<tr>
	     <td><input type="checkbox" style="zoom:1.5;" name="code" value="${item.code}"></td>
	     <td>${status.index}</td>
	     <td><input type="submit" onclick="test()" style="zoom:1.2;" value="${item.code}"></td>
		</tr>
		</c:forEach>
		
		  <!-- 
         <tr>
         	<td><input type="checkbox" style="zoom:1.5;" name="check" value="y" ></td>
         	<td>
         	<%=id %>
         	</td>
         	 <td><input type="submit" onclick="test()" style="zoom:1.2;" value="x">
         	 </td>
         </tr>
         -->
	 </table>
	
	
	
</body>
</html>