<%--
  Created by IntelliJ IDEA.
  User: Fionar
  Date: 2017/10/8
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login" method="post">
    <table align="center">
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="saveName" value="ok">记住用户名</td>
            <td><input type="checkbox" name="autoLogin" value="ok">自动登录</td>

        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    onload = function () {
        var s = "${cookie.saveName.value }";
        s = decodeURI(s);
        //将解码后的用户名付给username的文本框
        document.getElementsByName("username")[0].value = s;

    }
</script>
</body>
</html>
