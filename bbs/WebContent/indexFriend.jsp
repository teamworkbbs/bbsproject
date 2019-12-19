<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<style type="text/css">
.friendLink {
	font-family: 微软雅黑;
	font-size: 13px;
	margin-left: 10px;
	text-align:center;
}

a:link {
	color: #525252;
	background-color: white;
	text-decoration: none;
} /* 未被访问的链接 */
a:visited {
	color: #525252;
	background-color: white;
} /*已被访问的链接 */
a:hover {
	color: white;
	background-color: #509E88;
} /* 鼠标指针移动到链接上 */
</style>

<div class="friendLink">
	<div style="height: 26px;font-size: 15px;font-weight: bolder">
		<a href="http://www.zuidaima.com" target="_blank">&nbsp&nbsp最代码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	<div style="height: 26px;">
		<a href="http://www.csdn.net/" target="_blank"
			style="font-size: 15px;font-weight: bolder">&nbsp&nbspCSDN</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	
	<div style="height: 26px;">
		<a href="http://www.oschina.net/" target="_blank"
			style="font-size: 15px;font-weight: bolder">&nbsp&nbsp开源中国</a>&nbsp;&nbsp;
	</div>
	<div style="height: 26px;">
		<a href="http://bbs.tianya.cn/" target="_blank"
			style="font-size: 15px;font-weight: bolder">天涯论坛</a>
	</div>

</div>
