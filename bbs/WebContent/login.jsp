<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();//相对路径
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";//完全路径
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>登录</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"><!-- 清除页面缓存 -->
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"><!-- 关键字，用于搜索引擎 -->
    <link rel="stylesheet" type="text/css" href="./CSS/login.css">
    <script type="text/javascript" src="./JS/login.js"></script>
    <script type="text/javascript" src="./JS/jquery-1.11.0.js"></script>
    <script type="text/javascript">
        var msg = "" + '${request.tipMessage}';
        if (msg != "") {
            alert("您的密码是：" +msg);
        }
        if(self.location!=top.location) {
            top.location.href=self.location.href;
        }//当前窗体的url和父窗体的 url相同则把窗体设置为本窗体
    </script>
</head>
<body>
<div class="background">
    <div class="top_nav">
        <jsp:include page="/top.jsp"></jsp:include><!-- 将top.jsp页面包含进来 -->
    </div>
    <div class="tbody">
        <div class="login">
            <form action="user_Login.action" method="post" onsubmit="return login();" id="loginForm">
                <br /> <br />
                <h2 align="left" style="margin-left: 50px;">用户登录</h2>
                <br />
                <table style="font-size: 18px;" align="left">
                    <tr>
                        <td style="text-align: right;width: 220px;">用&nbsp;户&nbsp;名：</td>
                        <td><input type="text" name="user.username" id="uName" maxlength="8" onfocus="warnName()" onblur="return checkname()" />
                        </td>
                        <td id="namets" style="height:20px;line-height:20px;text-align: left;font-size: 12px;"></td>
                    </tr>
                    <tr>
                        <td style="height:20px;"></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;width: 220px;">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                        <td><input type="password" name="user.password" id="uPass" maxlength="16" onfocus="warnPass()" onblur="return checkpass();" />
                        </td>
                        <td id="passts" style="height:20px;line-height:20px;text-align: left;font-size: 12px;"></td>
                    </tr>
                    <tr>
                        <td style="height:20px;"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="登录" class="but"/></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="button" value="注册账号" onclick="window.location.href='register.jsp'" class="butt" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="button" value="忘记密码" onclick="window.location.href='findpsd.jsp'" class="butt" />
                        </td>
                        <td></td>
                </table>
            </form>
        </div>
        <div class="others"></div>
    </div>
    <div class="copyRight">
        <jsp:include page="/copyRight.jsp"></jsp:include><!-- 将copyRight.jsp页面包含进来 -->
    </div>
</div>
</body>