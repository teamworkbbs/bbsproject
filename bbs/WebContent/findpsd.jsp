<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">

    <title>找回密码</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <link rel="stylesheet" type="text/css" href="./CSS/findpsd.css">
    <script type="text/javascript" src="./JS/findpsd.js"></script>
</head>
<body><!-- 根据用户名和邮箱找回密码 -->
<div class="background">
    <div class="top_nav">
        <jsp:include page="top.jsp"></jsp:include>
    </div>
    <div class="tbody">
        <div class="findpsd">
            <form action="user_Findpsd.action" method="post" onsubmit="return findpsd();">
                <h2 align="left" style="margin-left: 50px;">找回密码</h2>
                <br />
                <table style="font-size: 18px;">
                    <tr>
                        <td style="text-align: right;width: 220px;">用&nbsp;户&nbsp;名<font
                                color="red">*</font>：</td>
                        <td><input type="text" name="user.username"
                                   onblur="return checkname()" onfocus="warnName()" id="uName" />
                        </td>
                        <td id="namets"
                            style="height:20px;line-height:20px;text-align: left;font-size: 12px;"></td>
                    </tr>
                    <tr>
                        <td style="height:20px;"></td>
                    </tr>
                    <tr>
                        <td style="text-align: right;width: 220px;">邮&nbsp;&nbsp;&nbsp;&nbsp;箱<font
                                color="red">*</font>：</td>
                        <td><input type="text" name="user.email" id="uEmail" onfocus="warnEmail()"
                                   onblur="return checkemail();" />
                        </td>
                        <td id="emailts"
                            style="height:20px;line-height:20px;text-align: left;font-size: 12px;"></td>
                    </tr>
                    <tr>
                        <td style="height:20px;"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="确认" class="butt" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" value="重置" class="butt" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height:20px;"></td>
                    </tr>
                    <tr><td></td><td><input type="button" value="返回登录页面" onclick="window.location.href='login.jsp'" class="but">
                </table>
            </form>
        </div>
        <div class="others"></div>
    </div>
    <div class="copyRight">
        <jsp:include page="copyRight.jsp"></jsp:include>
    </div>
</div>
</body>
</html>