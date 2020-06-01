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
			alert("아이디와 비밀번호를 다시 확인해주세요.");
			history.back();
		</script>
	</c:if>

	<!--<c:if test="${result==3 }">
		<script type="text/javascript">
			alert("이미 사용 중인 아이디입니다.");
			history.go(-1);
		</script>
	</c:if>

	<c:if test="${result==4 }">
		<script type="text/javascript">
			alert("사용 가능한 아이디입니다.");
		</script>
	</c:if>-->

	<c:if test="${result==5 }">
		<script type="text/javascript">
			alert("정상적으로 수정되었습니다.");
			opener.location.reload(); // 새로고침
			window.close();
		</script>
	</c:if>

	<c:if test="${result==6 }">
		<script type="text/javascript">
			alert("회원 전용입니다.");
			history.back();
		</script>
	</c:if>

	<c:if test="${result==7 }">
		<script type="text/javascript">
			alert("결제가 완료되었습니다.");
			document.location.href = "index.jsp"
		</script>
	</c:if>
	

</body>
</html>