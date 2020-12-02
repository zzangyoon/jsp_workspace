<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="db.DBManager"%>
<%@ page import="java.sql.*"%>

<%@ include file="/inc/lib.jsp"%>

<%
	String notice_id = request.getParameter("notice_id");

	String sql="delete from notice where notice_id="+notice_id;

	out.print("삭제에 사용할 sql문 : "+sql);

	DBManager dbManager = new DBManager();
	Connection con = null;
	PreparedStatement pstmt = null;

	con = dbManager.getConnection();
	pstmt = con.prepareStatement(sql);	//쿼리준비
	int result = pstmt.executeUpdate();	//DML수행

	if(result==0){
		out.print(getMsgBack("삭제실패"));
	}else{
		out.print(getMsgURL("삭제성공", "/board/list.jsp"));
	}
	dbManager.release(con, pstmt);	//자원 해제
%>

