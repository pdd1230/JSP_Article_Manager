<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항</title>
    <style>
        body { font-family: sans-serif; text-align: center; }
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        button {
            margin: 15px;
            padding: 8px 16px;
        }
    </style>
</head>
<body>

    <h2>/views/board1/notice.jsp</h2>

    <table>
        <tr>
            <th>글번호</th>
            <th>글제목</th>
            <th>작성자</th>
            <th>작성일자</th>
        </tr>
        <c:forEach var="notice" items="${noticeList}">
            <tr>
                <td>${notice.id}</td>
                <td><a href="/noticeDetail?id=${notice.id}">${notice.title}</a></td>
                <td>${notice.writer}</td>
                <td>${notice.date}</td>
            </tr>
        </c:forEach>
    </table>

    <div>
        <button onclick="location.href='/writeForm'">글쓰기</button>
        <button onclick="location.href='/home/main'">메인으로</button>
    </div>

</body>
</html>
