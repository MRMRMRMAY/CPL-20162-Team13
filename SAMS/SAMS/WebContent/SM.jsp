<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java"%>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
	//������������   
	String driverName = "com.mysql.jdbc.Driver";
	//���ݿ���Ϣ  
	String userName = "root";
	//����   
	String userPasswd = "1q2w";
	//���ݿ���   
	String dbName = "class";
	//����   
	String tableName = "student";
	//�����ݿ���Ϣ�ַ������ӳ�Ϊһ��������url��Ҳ����ֱ��д��url���ֿ�д�����˿�ά����ǿ��   

	String url = "jdbc:mysql://localhost/" + dbName + "?user=" + userName + "&password=" + userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection conn = DriverManager.getConnection(url);
	Statement stmt = conn.createStatement();
	String sql = "SELECT * FROM " + tableName;
	ResultSet rs = stmt.executeQuery(sql);
	out.print("Sno");
	out.print("\n\n|\n\n");
	out.print("Sname");
	out.print("\n\n|\n\n");
	out.print("Year");
	out.print("\n\n|\n\n");
	out.print("Dept");
	out.print("<br>");
	while (rs.next()) {
		out.print(rs.getString(1) + " ");
		out.print("|");
		out.print(rs.getString(2) + " ");
		out.print("|");
		out.print(rs.getString(3) + " ");
		out.print("|");
		out.print(rs.getString(4));
		out.print("<br>");
	}
	out.print("<br>");
	out.print("ok�� Database Query Successd��");
	rs.close();
	stmt.close();
	conn.close();
%>
