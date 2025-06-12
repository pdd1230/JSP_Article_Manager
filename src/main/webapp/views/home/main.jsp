<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 서비스 초기화면</title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        h1 {
            color: #333;
        }
        button {
            font-size: 16px;
            padding: 10px 25px;
            margin: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <h1>📋 회원 서비스 초기화면</h1>

    <!-- JSP 파일로 직접 이동 -->
    <button onclick="location.href='/views/member/registerForm.jsp'">회원가입</button>
    <button onclick="location.href='/views/board1/notice.jsp'">공지사항</button>
    <button onclick="location.href='/views/member/updateForm.jsp'">회원정보 수정</button>

</body>
</html>
