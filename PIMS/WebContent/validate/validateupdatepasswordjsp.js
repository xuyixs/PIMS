	

    var passWordRepeatFlag=true;
	// 验证新密码
	function passWord2Validate() {
		var passWord2 = document.getElementById("passWord2").value;
		if (passWord2 == null || passWord2 == "") {
			pleaseInputPassWord2.style.display = "inline";
			document.getElementById("passWord2").focus();
			return false;
		}
		return true;
	}
	// 验证新重复密码
	function passWordRepeatValidate() {
		var passWordRepeat = document.getElementById("passWordRepeat").value;
		if (passWordRepeat == null || passWordRepeat == "") {
			pleaseInputPassWordRepeat.style.display = "inline";
			document.getElementById("passWordRepeat").focus();
			return false;
		}
		return true;
	}
	// 全部验证
	function validateAll(){
		if(passWord2Validate()&&passWordRepeatValidate()&&passWordRepeatFlag){
			return true;
		}
		return false;
	}
	function clearPassWordRepeatMsg(){
		var passWordRepeat = document.getElementById("passWordRepeat").value;
		var passWord2 = document.getElementById("passWord2").value;
		if (passWordRepeat != null || passWordRepeat != "") {
			pleaseInputPassWordRepeat.style.display = "none";
		}
		if(passWordRepeat!=passWord2){
			PassWordRepeat.style.display="inline";
			passWordRepeatFlag=false;
		}
		if(passWordRepeat==passWord2){
			PassWordRepeat.style.display="none";
			passWordRepeatFlag=true;
		}
	}
	
	function clearPassWord2Msg(){
		var passWord2 = document.getElementById("passWord2").value;
		if (passWord2 != null || passWord2 != "") {
			pleaseInputPassWord2.style.display = "none";
		}
	}
