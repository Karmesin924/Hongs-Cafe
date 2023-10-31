<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%
  request.setCharacterEncoding("utf-8");

  String uid = request.getParameter("id");
  
  UserDAO udao = new UserDAO();
  FeedDAO fdao = new FeedDAO();
  
  if(udao.exists(uid) == false){
	  out.print("NO");
  }
  else {
	  if(udao.delete(uid)){
		  
		  fdao.deleteAll(uid);
		  out.print("OK");
		  session.invalidate();
	  }
	  else {
		  out.print("ER");
	  }
  }
  
%>
