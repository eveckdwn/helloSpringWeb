<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- Spring 태그를 사용할 것을 선언한다. -->
<!-- Spring이 제공하는 'Jstl'라이브러리를 이용해서 올바르게 Datetime이 표시되도록 설정-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Hello, Spring Web Application</title>
    <style type="text/css">
        html, body {
            height: 100%;
        }

        html {
            display: table;
            width: 100%;
        }

        body {
            display: table-cell;
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <h2>${hello.name}님 안녕하세요.</h2>
    <!-- 위 블록은 표현식 언어(expression language)로 뷰에 전달된 모델에 값을 출력할 때 사용한다. -->
    <!-- 이 때, 출력할 모델은 ModelAndView에 담을 때, 입력한 이름(key)으로 찾을 수 있다. -->

    <!-- <p>현재 시간은 ${hello.currentDatetime}입니다.</p> -->
    <p>현재 시간은 <spring:eval expression="hello.currentDatetime"/>입니다.</p>
    <!-- 날짜와 시간을 출력, spring 태그를 사용해 출력하면 @DateTimeFormat 애노테이션으로 작성한 출력 포맷을 사용한다 -->
</body>
</html>