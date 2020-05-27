<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result==1 }">
		<script type="text/javascript">
			alert("회원가입이 완료되었습니다.");
			document.location.href = "index.jsp";
		</script>
	</c:if>

	<c:if test="${result==2 }">
		<script type="text/javascript">
			alert("아이디와 패스워드를 다시 확인해주세요.");
			history.back();
		</script>
	</c:if>

	<c:if test="${result==3 }">
		<script type="text/javascript">
			if (!alert("이미 사용 중인 아이디입니다.")) {
				window.close();
			}
		</script>
	</c:if>

	<c:if test="${result==4 }">
		<script type="text/javascript">
		if (!alert("사용 가능한 아이디입니다.")) {
			opener.joinForm.idChkOk.value = "yes";
			window.close();
		}
		</script>
	</c:if>

</body>
</html>