<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.FeedDAO" %>

<%
    int feedNo = Integer.parseInt(request.getParameter("feedNo"));

    FeedDAO feedDAO = new FeedDAO();
    
	boolean deleted = feedDAO.delete(feedNo);
        
    if (deleted) out.println("OK");
    else out.println("ER");
    
%>

