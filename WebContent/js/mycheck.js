/**
 * 
 */

// 아이디 중복 체크
function idCheck() {
	if (document.joinForm.id.value == "") {
		alert("아이디를 입력하세요.");
		joinForm.id.focus();
		return;
	}

	let id = document.joinForm.id.value;
	let returnID = chkString("id", id);
	if (returnID < 4) {
		joinForm.id.focus();
		return;
	}

	var url = "MainServlet?command=Movie_IdCheck" + "/"
			+ document.joinForm.id.value;

	window
			.open(url, "_blank_1",
					"toolbar=no,menubar=no,scrollbars=yes,resizable=no,width=500,height=150");
}

function chkString(type, nowString) {
	let resultString = stringchk(nowString, "id");
	if (resultString == 1) {
		alert("아이디는 6~12글자 사이로 입력해주세요.");
	} else if (resultString == 2) {
		alert("알파벳 소문자만 사용가능합니다.");
	} else if (resultString == 3) {
		alert("아이디는 영문+숫자로 입력해주세요.")
	}
	return resultString;
}

function stringchk(nowString, chk) {
	let cnt_1 = 0;
	let cnt_2 = 0;

	if (chk == "id") {
		if (!(nowString.length >= 6 && nowString.length <= 12)) {
			return 1; // 글자수 틀림
		}

		for (i = 0; i < nowString.length; i++) {
			let asciiNum = nowString.charCodeAt(i);
			if (asciiNum < 97 || asciiNum > 121) { // 소문자가 아니고
				if (asciiNum < 48 || asciiNum > 57) { // 숫자도 아니면
					return 2; // 소문자가 아님
				}
			}
			if (asciiNum >= 97 && asciiNum <= 121) {
				cnt_1++;
			}
			if (asciiNum >= 48 && asciiNum <= 57) {
				cnt_2++;
			}
		}
		if (cnt_1 < 2 || cnt_2 < 2) {
			return 3; // 소문자+숫자 조합이 아님
		}

	} else if (chk == "pwd") {
		if (!(nowString.length >= 8 && nowString.length <= 20)) {
			return 1; // 글자수 틀림
		}

		for (i = 0; i < nowString.length; i++) {
			let asciiNum = nowString.charCodeAt(i);
			if (asciiNum < 97 || asciiNum > 121) { // 소문자가 아니고
				if (asciiNum < 65 || asciiNum > 90) // 대문자도 아니고
					if (asciiNum < 48 || asciiNum > 57) { // 숫자도 아니면
						return 2; // 영문이나 숫자가 아님
					}
			}
			if ((asciiNum >= 97 && asciiNum <= 121)
					|| (asciiNum >= 65 && asciiNum <= 90)) {
				cnt_1++;
			}
			if (asciiNum >= 48 && asciiNum <= 57) {
				cnt_2++;
			}
		}
		if (cnt_1 < 2 || cnt_2 < 2) {
			return 3; // 소문자+숫자 조합이 아님
		}

	}
}

// 아이디 확인
function idOk() {
	opener.joinForm.id.value = document.idChkForm.id.value;
	opener.joinForm.idChkOk.value = document.idChkForm.id.value;
	self.close();
}

// 회원가입 체크
function joinCheck() {
	if (document.joinForm.name.value == "") {
		alert("이름을 입력하세요.");
		joinForm.name.focus();
		return false;
	}
	if (document.joinForm.idChkOk.value == "no") {
		alert("아이디 중복확인을 해주세요.");
		joinForm.id.focus();
		return false;
	}
	if (document.joinForm.pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		joinForm.pwd.focus();
		return false;
	}
	if (document.joinForm.tel.value == "") {
		alert("전화번호를 입력하세요.")
		joinForm.tel.focus();
		return false;
	}

	let pwd = document.joinForm.pwd.value;
	let returnPwd = chkStringPwd("pwd", pwd);
	if (returnPwd < 4) {
		joinForm.pwd.focus();
		return false;
	}
	
	return true;
}

function chkStringPwd(type, nowString) {
	let resultString = stringchk(nowString, "pwd");
	if (resultString == 1) {
		alert("비밀번호는 8~20글자 사이로 입력해주세요.");
	} else if (resultString == 2) {
		alert("비밀번호는 영문+숫자로 입력해주세요.");
	} else if (resultString == 3) {
		alert("비밀번호는 영문+숫자로 입력해주세요.")
	}
	return resultString;
}

// 로그인 체크
function loginCheck() {
	if (document.loginForm.id.value == "") {
		alert("아이디를 입력하세요.");
		loginForm.id.focus();
		return false;
	}
	if (document.loginForm.pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		loginForm.pwd.focus();
		return false;
	}
	return true;
}

