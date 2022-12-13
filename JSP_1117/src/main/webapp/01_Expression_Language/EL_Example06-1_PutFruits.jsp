<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	ArrayList<String> items = new ArrayList<String>();
	items.add("딸기");
	items.add("바나나");
	items.add("복숭아");
	request.setAttribute("FRUITS", items);
	RequestDispatcher dispatcher = request.getRequestDispatcher("EL_Example06-2_ShowFruits.jsp");
	dispatcher.forward(request, response);
%>