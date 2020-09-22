<%@page import="com.spring.ex.Person"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person/personView2.jsp <br><br>

id : <%=request.getParameter("id") %><br>
pw : ${param.pw }<br>
name : ${param.name }<br>
addr : ${param.addr }<br><br>

<hr>

per.id1 : ${requestScope.per.getId() }<br>
per.id2 : ${requestScope.per.id }<br>
per.id3 : ${per.getId() }<br>
per.id4 : ${per.id }<br>

<hr>

per.id5 : <%=request.getAttribute("per") %><br>
per.id6 : <%=((Person)request.getAttribute("per")).getId() %><br><br>


per.pw : <br>
per.name : <br>
per.addr : <br>

<hr>


per.pw1 : ${requestScope.per.getPw() }<br>
per.pw2 : ${requestScope.per.pw }<br>
per.pw3 : ${per.getPw() }<br>
per.pw4 : ${per.pw }<br>
per.pw5 : <%=((Person)request.getAttribute("per")).getPw() %><br>



<hr>

per.addr1 : ${requestScope.per.getAddr() }<br>
per.addr2 : ${requestScope.per.addr }<br>
per.addr3 : ${per.getAddr() }<br>
per.addr4 : ${per.addr }<br>
per.addr5 : <%=((Person)request.getAttribute("per")).getAddr() %><br>







