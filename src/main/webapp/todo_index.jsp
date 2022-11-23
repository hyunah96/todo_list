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
		table 
		{
	    width: 500px;
	  	}
	</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table 
            width="50%"
            height="200"
            cellspacing="5">
	 
		<caption>
			<h1>to-do list</h1>
		</caption>
		<thead>
		  <tr align="center" bgcolor="#AB82FF" height="50" >
		  <form action="/" method="get">
		 
		  <th>
		  <input type="checkbox" style="zoom:1.5;" name="xxx" value="yyy" >
		  	 <!--checked를 붙이면 자동으로 체크상태가 됨 -->
    		 <input type="text" name="st_id" placeholder="할 일을 입력하세요" 
    		 	style="border: none; text-align:center; background: transparent; height:50; font-size:30px;"> 
    		 <input type="submit">
   
    </th>
</form>
                   
                </tr>
            </thead>
	</table>
</body>
</html>