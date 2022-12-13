<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<%
	String agree = request.getParameter("AGREE");
	String result = null;
	
	if(agree.equals("Yes"))
	{
		String id = (String) session.getAttribute("ID");
		String pwd = (String) session.getAttribute("PASSWORD");
		String name = (String) session.getAttribute("NAME");
		
		PrintWriter writer = null;
		try
		{
			String filepath = application.getRealPath("/WEB-INF/"+id+".txt");
//			out.println(application.getRealPath("/WEB-INF/"+id+".txt"));
			writer = new PrintWriter(filepath);
			writer.println("아이디 : " + id);
			writer.println("비밀번호 : " + pwd);
			writer.println("이름 : " + name);
			result = "SUCCESS";
		}
		catch(IOException e)
		{
			result = "FAIL";
		}
		finally
		{
			try
			{
				writer.close();
			}
			catch(Exception e)
			{
				
			}
		}
	}
	else
	{
		result = "FAIL";
	}
	session.invalidate();
	response.sendRedirect("result.jsp?RESULT="+result);
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Subscribe</title>
	</head>
	<body>
		
	</body>
</html>