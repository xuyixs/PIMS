// 验证用户名
function userNameValidate() {
	var userName = document.getElementById("userName").value;
	if (userName == null || userName == "") {
		pleaseInputUserName.style.display = "inline";
		document.getElementById("userName").focus();
		error.style.display = "none";
		return false;
	}
	return true;
}
// 验证密码
function passWordValidate() {
	var passWord = document.getElementById("passWord").value;
	if (passWord == null || passWord == "") {
		pleaseInputPassWord.style.display = "inline";
		document.getElementById("passWord").focus();
		error.style.display = "none";
		return false;
	}
	return true;
}
// 全部验证
function validateAll(){
	if(userNameValidate()&&passWordValidate()){
		return true;
	}
	return false;
}
// 清空信息
function clearUserNameMsg(){
	var userName = document.getElementById("userName").value;
	if (userName != null || userName != "") {
		pleaseInputUserName.style.display = "none";
	}
}
function clearPassWordMsg(){
	var passWord = document.getElementById("passWord").value;
	if (passWord != null || passWord != "") {
		pleaseInputPassWord.style.display = "none";
	}
}