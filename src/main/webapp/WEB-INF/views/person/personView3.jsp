<%@page import="com.spring.ex.Person"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
person/personView3.jsp <br><br>


id : ${p.id }<br>
id2 : ${person.id }<br>
id3 : ${person.getId() }<br>
id4 : ${requestScope.person.id }<br><br>

<hr>


pw : ${person.pw }<br>
pw2 : ${person.getPw() }<br>
pw3 : ${requestScope.person.pw }<br>

<hr>

name : ${person.name }<br>
name2 : ${person.getName() }<br>
name3 : ${requestScope.person.name }<br>

<hr>

addr : ${person.addr }<br>
addr2 : ${person.getAddr() }<br>
addr3 : ${requestScope.person.addr }<br>