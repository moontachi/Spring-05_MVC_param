<%@page import="com.spring.ex.Person"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person/personView4.jsp <br><br>


id : ${p.id }<br>
id2 : ${abcd.id }<br>
id3 : ${abcd.getId() }<br>
id4 : ${requestScope.abcd.id }<br>
id5 : <%= ((Person)request.getAttribute("abcd")).getId() %><br>

<hr>


pw : ${abcd.pw }<br>
pw2 : ${abcd.getPw() }<br>
pw3 : ${requestScope.abcd.pw }<br>

<hr>

name : ${abcd.name }<br>
name2 : ${abcd.getName() }<br>
name3 : ${requestScope.abcd.name }<br>

<hr>

addr : ${abcd.addr }<br>
addr2 : ${abcd.getAddr() }<br>
addr3 : ${requestScope.abcd.addr }<br>