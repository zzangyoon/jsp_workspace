<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script>
function getMsg(){
	return "<%="안녕"%>";
}
//alert(getMsg());
<%
	out.print(getMsg()+"하세요");	//에러나는 이유!!! 가 중요
%>

</script>
</head>
<body>

</body>
</html>
