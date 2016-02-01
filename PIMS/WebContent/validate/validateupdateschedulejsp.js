	// 验证日程标题
	function userNameValidate() {
		var userName = document.getElementById("userName").value;
		if (userName == null || userName == "") {
			pleaseInputUserName.style.display = "inline";
			document.getElementById("userName").focus();
			return false;
		}
		return true;
	}
	// 验证日程时间
	function dateValidate() {
		var dateTime = document.getElementById("date").value;
		if (dateTime == null || dateTime == "") {
			pleaseInputDate.style.display = "inline";
			document.getElementById("date").focus();
			return false;
		}
		return true;
	}
	// 全部验证
	function validateAll(){
		if(userNameValidate()&dateValidate()){
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
	function clearDateMsg(){
		var dateTime =document.getElementById("date").value;
		if (dateTime != null || dateTime != "") {
			pleaseInputDate.style.display = "none";
		}
	}
