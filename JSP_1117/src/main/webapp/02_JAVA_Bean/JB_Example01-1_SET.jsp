<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="JE_1117.Product"%>

<%
	Product product = new Product();
	product.setProd_Name("초코케이크 3호");
	product.setProd_Price(20000);
	request.setAttribute("PRODUCT", product);
	RequestDispatcher dispatcher = request.getRequestDispatcher("JB_Example01-2_VIEW.jsp");
	dispatcher.forward(request, response);
%>