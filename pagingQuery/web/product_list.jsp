<%--
  Created by IntelliJ IDEA.
  User: Fionar
  Date: 2017/9/20
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" align="center" width="88%">
    <tr>
        <th>pid</th>
        <th>商品图片</th>
        <th>商品名称</th>
        <th>市场价</th>
        <th>商城价</th>
        <th>商品描述</th>
        <th>操作</th>
    </tr>

    <c:forEach items="${list}" var="p">
        <tr>

            <td width="8%">${p.pid}</td>
            <td width="8%"><img src="${p.pimage}" width="80"></td>
            <td width="8%">${p.pname}</td>
            <td width="8%">${p.shop_price}</td>
            <td width="8%">${p.market_price}</td>
            <td >${p.pdesc}</td>
            <td width="8%">修改|删除</td>
        </tr>
    </c:forEach>
</table>
d
</body>
c
</html>