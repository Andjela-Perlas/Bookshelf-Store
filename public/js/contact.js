function contact() {
	
	let fullName = document.querySelector("#fullName").value;
	let email = document.querySelector("#email").value;
	let content = document.querySelector("#content").value;

	let fullNameError = document.querySelector("#fullNameHelp");
	let emailError = document.querySelector("#emailHelp");
	let contentError = document.querySelector("#contentHelp");

	let fullNameTrue = true;
	let emailTrue = true;
	let contentTrue = true;

	let reName = /^[A-Z][a-z]{2,15}\s[A-Z][a-z]{2,15}$/;
	let reEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;


	if (fullName) {
		if (!reName.test(fullName)) {
			fullNameError.textContent = "Ime nije ispravno!";
			fullNameTrue = false;
		}
	} else {
		fullNameError.textContent = "Polje za ime ne sme biti prazno!";
		fullNameTrue = false;
	}

	if (email) {
		if (!reEmail.test(email)) {
			emailError.textContent = "Email nije ispravan!";
			emailTrue = false;
		}
	} else {
		emailError.textContent = "Polje za email ne sme biti prazno!";
		emailTrue = false;
	}


	if (!content) {
		contentError.textContent = 'Polje za poruku ne sme biti prazno!';
		contentTrue = false;
	}


	if (fullNameTrue && emailTrue && contentTrue) {
		return true;
	} else{
		return false;
	}
}