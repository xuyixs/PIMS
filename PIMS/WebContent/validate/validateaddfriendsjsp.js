	// 验证用户名
	function userNameValidate() {
		var userName = document.getElementById("userName").value;
		
		if (userName == null || userName == "") {
			pleaseInputUserName.style.display = "inline";
			document.getElementById("userName").focus();
			return false;
		}
		return true;
	}
	//验证好友姓名
	function nameValidate() {
		var name = document.getElementById("name").value;
		if (name == null || name == "") {
			pleaseInputName.style.display = "inline";
			document.getElementById("name").focus();
			return false;
		}
		return true;
	}
	//验证手机号码
	function phoneValidate() {
		var phone = document.getElementById("phone").value;
		if (phone == null || phone == "") {
			pleaseInputPhone.style.display = "inline";
			document.getElementById("phone").focus();
			return false;
		}
		return true;
	}
	//验证电子邮件
	function emailValidate() {
		var email = document.getElementById("email").value;
		if (email == null || email == "") {
			pleaseInputEmail.style.display = "inline";
			document.getElementById("email").focus();
			return false;
		}
		return true;
	}
	//验证工作地点
	function workPlaceValidate() {
		var workPlace = document.getElementById("workPlace").value;
		if (workPlace == null || workPlace == "") {
			pleaseInputWorkPlace.style.display = "inline";
			document.getElementById("workPlace").focus();
			return false;
		}
		return true;
	}
	//验证家庭住址
	function placeValidate() {
		var place = document.getElementById("place").value;
		if (place == null || place == "") {
			pleaseInputPlace.style.display = "inline";
			document.getElementById("place").focus();
			return false;
		}
		return true;
	}
	// 验证QQ
	function qqValidate() {
		var qq = document.getElementById("qq").value;
		if (qq == null || qq == "") {
			pleaseInputQq.style.display = "inline";
			document.getElementById("qq").focus();
			return false;
		}
		return true;
	}
	// 全部验证
	function validateAll(){
		if(userNameValidate()&&nameValidate()&&phoneValidate()&&emailValidate()&&workPlaceValidate()&&placeValidate()&&qqValidate()){
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
	function clearNameMsg(){
		var name = document.getElementById("name").value;
		if (name != null || name != "") {
			pleaseInputName.style.display = "none";
		}
	}function clearPhoneMsg(){
		var phone = document.getElementById("phone").value;
		if (phone != null || phone != "") {
			pleaseInputPhone.style.display = "none";
		}
	}
	function clearEmailMsg(){
		var email = document.getElementById("email").value;
		if (email != null || email != "") {
			pleaseInputEmail.style.display = "none";
		}
	}
	function clearWorkPlaceMsg(){
		var workPlace = document.getElementById("workPlace").value;
		if (workPlace != null || workPlace != "") {
			pleaseInputWorkPlace.style.display = "none";
		}
	}
	function clearPlaceMsg(){
		var place = document.getElementById("place").value;
		if (place != null || place != "") {
			pleaseInputPlace.style.display = "none";
		}
	}
	function clearQqMsg(){
		var qq = document.getElementById("qq").value;
		if (qq != null || qq != "") {
			pleaseInputQq.style.display = "none";
		}
	}
	
	
