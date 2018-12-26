<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%!
    int num=0;   
    synchronized void add(){
      num++;
    }
%>
<% add(); %>
<html>
<head>
<title>CounterWebApp</title>
</head>
 
<body>
<center>
  实现计数功能，你是第<%=num%>位访问的游客！
</center>
</body>
</html>