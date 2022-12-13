<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int count = 3;
	String[] winners = new String[count];
	
	winners[0] = "이수현";
	winners[1] = "정세훈";
	winners[2] = "김진희";
	
	request.setAttribute("COUNT", count);
	request.setAttribute("WINNERS", winners);
	RequestDispatcher dispatcher = request.getRequestDispatcher("EL_Example05-2_WinnersView.jsp");
	dispatcher.forward(request, response);
%>