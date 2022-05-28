<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import= "com.javaex.dao.PhoneDao" %>
<%@ page import= "com.javaex.vo.PersonVo" %>
<%@ page import = "java.util.List" %>
<% 

   String name = request.getParameter("name");
   String hp = request.getParameter("hp");
   String company = request.getParameter("company");
   
   
   //Person 객체만들기
   PersonVo personVo = new PersonVo(name, hp, company);
   System.out.println(personVo);
   //Phone 객체만들기
   PhoneDao phoneDao = new PhoneDao();
   
   //PhoneDao의personInsert()를 이용해서 저장하기
   phoneDao.personInsert(personVo);
   
   
   
   //List<PersonVo> personList = phoneDao.getPersonList();
   
   response.sendRedirect("http://localhost:8088/phonebook1/list.jsp");
   
%>