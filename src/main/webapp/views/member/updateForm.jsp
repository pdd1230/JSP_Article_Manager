<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
    <style>
        body { font-family: sans-serif; text-align: center; }
        table { margin: 0 auto; border-collapse: collapse; }
        td { padding: 8px; }
        button { padding: 8px 16px; margin-top: 20px; }
    </style>
</head>
<body>

    <h2>📋 회원정보 수정 폼</h2>

    <form action="/update" method="post">
        <table border="1">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id" value="${member.id}" readonly /></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="pw" /></td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td><input type="password" name="pwCheck" /></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" value="${member.name}" /></td>
            </tr>
            <tr>
                <td>생년월일</td>
                <td><input type="text" name="birth" value="${member.birth}" /></td>
            </tr>
            <tr>
                <td>통신사</td>
                <td>
                    <select name="carrier">
                        <option value="KT" ${member.carrier == 'KT' ? 'selected' : ''}>KT</option>
                        <option value="SKT" ${member.carrier == 'SKT' ? 'selected' : ''}>SKT</option>
                        <option value="LGU+" ${member.carrier == 'LGU+' ? 'selected' : ''}>LGU+</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" name="phone" value="${member.phone}" /></td>
            </tr>
            <tr>
                <td>성별</td>
                <td>
                    <input type="radio" name="gender" value="M" ${member.gender == 'M' ? 'checked' : ''} /> 남
                    <input type="radio" name="gender" value="W" ${member.gender == 'W' ? 'checked' : ''} /> 여
                </td>
            </tr>
        </table>

        <button type="submit">정보수정</button>
    </form>

</body>
</html>
