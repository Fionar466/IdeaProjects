<%--
  Created by IntelliJ IDEA.
  User: Fionar
  Date: 2017/9/26
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<input type="button" value="点我" onclick="btnClick()">
</body>
<script>
    function btnClick() {
        var xmlhttp = null;
        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                alert(xmlhttp.responseText);
            }
        }
        xmlhttp.open("get", "${pageContext.request.contextPath}/ajax2?username=张三");
        xmlhttp.send();
    }
</script>
</html>
