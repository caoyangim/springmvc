<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/26 0026
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>主界面</title>
</head>

<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
    table.hovertable {
        font-family: verdana,arial,sans-serif;
        font-size:11px;
        color:#333333;
        border-width: 1px;
        border-color: #999999;
        border-collapse: collapse;
    }
    table.hovertable th {
        background-color:#c3dde0;
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #a9c6c9;
    }
    table.hovertable tr {
        background-color:#d4e3e5;
    }
    table.hovertable td {
        border-width: 1px;
        padding: 8px;
        border-style: solid;
        border-color: #a9c6c9;
    }
</style>

<body>


<!-- Table goes in the document BODY -->
<table class="hovertable">
    <tr>
        <th>ID</th><th>用户名</th><th>密码</th><th>年龄</th><th>操作</th>
    </tr>

    <c:forEach items="${userList}" var="item" varStatus="status">
        <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
            <td>${status.index+1}</td><td>${item["USER_Name"]}</td><td>${item["PASSWORD"]}</td><td>${item["Age"]}</td><td><a href="/springmvc_war/user/showUser?id=${status.index+1}">查看</a>/<a>删除</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
