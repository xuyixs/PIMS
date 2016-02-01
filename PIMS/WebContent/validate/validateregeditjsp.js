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
	//验证姓名
	function nameValidate() {
		var name = document.getElementById("name").value;
		if (name == null || name == "") {
			pleaseInputName.style.display = "inline";
			document.getElementById("name").focus();
			return false;
		}
		return true;
	}
	//验证教育程度
	function eduValidate() {
		var edu = document.getElementById("edu").value;
		if (edu == null || edu == "") {
			pleaseInputEdu.style.display = "inline";
			document.getElementById("edu").focus();
			return false;
		}
		return true;
	}
	//验证目前工作
	function worksValidate() {
		var works = document.getElementById("works").value;
		if (works == null || works == "") {
			pleaseInputWorks.style.display = "inline";
			document.getElementById("works").focus();
			return false;
		}
		return true;
	}
	//验证常用手机
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
	//验证国籍国家
	function nationValidate() {
		var nation = document.getElementById("nation").value;
		if (nation == null || nation == "") {
			pleaseInputNation.style.display = "inline";
			document.getElementById("nation").focus();
			return false;
		}
		return true;
	}
	//验证出生日期
	function birthValidate() {
		var birth = document.getElementById("birth").value;
		if (birth == null || birth == "") {
			pleaseInputBirth.style.display = "inline";
			document.getElementById("birth").focus();
			return false;
		}
		return true;
	}
	//验证地址信息
	function PlaceValidate() {
		var Place = document.getElementById("Place").value;
		if (Place == null || Place == "") {
			pleaseInputPlace.style.display = "inline";
			document.getElementById("Place").focus();
			return false;
		}
		return true;
	}
	
	// 全部验证
	function validateAll(){
		if(userNameValidate()&&nameValidate()&&eduValidate()&&worksValidate()&&phoneValidate()&&emailValidate()&&nationValidate()&&birthValidate()&&PlaceValidate()){
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
	}
	function clearEduMsg(){
		var edu = document.getElementById("edu").value;
		if (edu != null || edu != "") {
			pleaseInputEdu.style.display = "none";
		}
	}
	function clearWorksMsg(){
		var works = document.getElementById("works").value;
		if (works != null || works != "") {
			pleaseInputWorks.style.display = "none";
		}
	}
	function clearPhoneMsg(){
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
	function clearNationMsg(){
		var nation = document.getElementById("nation").value;
		if (nation != null || nation != "") {
			pleaseInputNation.style.display = "none";
		}
	}
	function clearBirthMsg(){
		var birth = document.getElementById("birth").value;
		if (birth != null || birth != "") {
			pleaseInputBirth.style.display = "none";
		}
	}
	function clearPlaceMsg(){
		var place = document.getElementById("place").value;
		if (place != null || place != "") {
			pleaseInputPlace.style.display = "none";
		}
	}
	
	
	
