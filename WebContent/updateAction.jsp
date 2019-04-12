<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>JSP Bulletin Board System</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Please sign in.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		int bbsID = 0;
		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('Invalid article.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!userID.equals(bbs.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('You are not authorized.')");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		} else{
			
			if(request.getParameter("bbsTitle") == null || request.getParameter("bbsContent") == null 
				|| request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")){
				PrintWriter script = response.getWriter();
				script.println("<script >");
				script.println("alert('Please fill in the blank.')");
				script.println("history.back()");
				script.println("</script >");
			}
			else{
				BbsDAO bbsDAO = new BbsDAO();
				int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
				if(result == -1){
					PrintWriter script = response.getWriter();
					script.println("<script >");
					script.println("alert('You failed in editing.')");
					script.println("history.back()");
					script.println("</script >");
				}
				else {
					PrintWriter script = response.getWriter();
					script.println("<script >");
					script.println("location.href='bbs.jsp' ");
					script.println("</script >");
				}
			}
			}
		
		
	%>

	
</body>
</html>