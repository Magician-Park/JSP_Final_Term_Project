<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%
  request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>중형차 - IWASACAR</title>
  <meta name="description" content="IWASACAR 대형차">
  <link rel="icon" type="image/png" href="images/we-removebg-preview.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSS -->
  <link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap" rel="stylesheet">
  <link href="/css/style.css" rel="stylesheet">
</head>

<body>
<%
  String userID=null;
  if(session.getAttribute("userID")!=null){
    userID=(String)session.getAttribute("userID");
  }
%>
<div id="news" class="big-bg">
  <header class="page-header wrapper">
    <h1><a href="main.jsp"><img class="logo" src="/images/iwas.png" alt="IWASACAR"></a></h1>
    <nav>
      <ul class="main-nav">
        <li><a href="bulletinboard.jsp">중형차</a></li>
        <li><a href="bigboard.jsp">대형차</a></li>
        <li><a href="bulletin_main.jsp">질문하기</a></li>
        <%
          if(userID==null){//로그인이 되어 있지 않다면
        %>
        <li><a href="login.jsp">로그인</a></li>
        <li><a href="join.jsp">회원가입</a></li>
      </ul>
      <%
      } else{//로그인이 되어있다면
      %>
      <li><a href="logoutAction.jsp">로그아웃</a></li>
      <li><a href="userUpdate.jsp">내 정보</a></li>
      </ul>
      <%
        }
      %>
    </nav>
  </header>

  <div class="wrapper">
    <h2 class="page-title">대형차</h2>
  </div><!-- wrapper -->
</div><!-- #news -->
<%
  BbsDAO bbs = new BbsDAO();
%>
<div class="news-contents wrapper">

  <article>
    <header class="post-info">
      <h2 class="post-title">대형 SUV</h2>
      <p class="post-date"><%=bbs.getDate().substring(5, 7)%>/<%=bbs.getDate().substring(8, 10)%> <span><%=bbs.getDate().substring(0, 4)%></span></p> <!-- 만든 날짜 -->
    </header>
    <a href="bigboard-01.jsp"><img src="/images/ford.png" alt="대형차 게시글 1"></a>
    <a href="bigboard-02.jsp"><img src="/images/taho.png" alt="대형차 게시글 2"></a>
    <a href="bigboard-03.jsp"><img src="/images/X7.png" alt="대형차 게시글 3"></a>
    <a href="bigboard-04.jsp"><img src="/images/GLS.png" alt="대형차 게시글 4"></a>
    <a href="bigboard-05.jsp"><img src="/images/urs.png" alt="대형차 게시글 5"></a>
    <a href="bigboard-06.jsp"><img src="/images/lols.png" alt="대형차 게시글 6"></a>
  </article>
</div><!-- news-contents -->

<footer>
  <div class="wrapper">
    <p><small>&copy; IWASACAR </small></p>
  </div>
</footer>
</body>
</html>

