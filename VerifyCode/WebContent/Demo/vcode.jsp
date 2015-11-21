<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/**
	 * 刷新验证码
	 */
	function refreshCode(imgObj) {
		if (!imgObj) {
			imgObj = document.getElementById("verifyCode");
		}
		var index = imgObj.src.indexOf("?");
		if (index != -1) {
			var url = imgObj.src.substring(0, index + 1);
			imgObj.src = url + Math.random();
		} else {
			imgObj.src = imgObj.src + "?" + Math.random();
		}
	}
</script>

</head>
<body>
	<img id="verifyCode" alt="验证码图片" title="验证码图片"
		src="${pageContext.request.contextPath }/VerifyCodeServlet"
		onclick="refreshCode(this)" />
	<a href="javascript:void(0);" onclick="refreshCode()">换一张</a>
</body>
</html>