window.onload = function() {

	document.querySelector("#registerBtn").addEventListener("click", register);
}

function register () {

	let name = document.querySelector("#name").value;
	let email = document.querySelector("#email").value;
	let password = document.querySelector("#password").value;
	let confirmPass = document.querySelector("#confPass").value;
	let genders = document.getElementsByName("gender");
	let selectedGender = "";

	let reName= /^[A-Z][a-z]{2,15}\s[A-Z][a-z]{2,15}$/;
	let reEmail = /^([A-Za-z0-9\_\-\.])+\@([A-Za-z0-9\_\-\.])+\.([A-Za-z]{2,4})$/;
	let rePassword = /^[a-z0-9]{8,}$/;

	let nameError = document.querySelector("#nameError");
	let emailError = document.querySelector("#emailError");
	let passwordError = document.querySelector("#passwordError");
	let confirmPassError = document.querySelector("#confirmPasswordError");
	let genderError = document.querySelector("#genderError");

	let nameOk = true;
	let emailOk = true;
	let passwordOk = true;
	let confirmPassOk = true;
	let genderChecked = true;

	if (name) {
		if (!reName.test(name)) {
			nameOk = false;
			nameError.textContent = "Ime nije ispravnog formata!";
		}
	} else {
		nameOk = false;
		nameError.textContent = "Polje za ime ne sme biti prazno!";
	}

	if (password) {
		if (!rePassword.test(password)) {
			passwordOk = false;
			passwordError.textContent = "Lozinka nije ispravnog formata ili ima manje od 8 karaktera!";
		}
	} else {
		passwordOk = false;
		passwordError.textContent = "Polje za lozinku ne sme biti prazno!";
	}

	if (email) {
		if (!reEmail.test(email)) {
			emailOk = false;
			emailError.textContent = "Email nije ispravanog formata!";
		}
	} else {
		emailOk = false;
		emailError.textContent = "Polje za email ne sme biti prazno!";
	}

	if (confirmPass !== password) {
		confirmPassOk = false;
		confirmPassError.textContent = "Lozinke se ne poklapaju!";
	}

	for (var i = 0; i < genders.length; i++) {
		if (genders[i].checked) {
			selectedGender = genders[i].value;
			break;
		}
	}

	if (selectedGender === "") {
		genderChecked = false;
		genderError.textContent = "Morate izabrati pol!";
	}

	if (nameOk && emailOk && passwordOk && confirmPassOk && genderChecked) {

		nameError.textContent = "";
		emailError.textContent = "";
		passwordError.textContent = "";
		confirmPassError.textContent = "";
		genderError.textContent = "";

		$.ajax({
			url: "index.php?page=reg",
			method : "POST",
			dataType: "json",
			data: {
				registerBtn : true,
				name, email, password, selectedGender, confirmPass
			},
			success: function (data) {

				document.querySelector("#name").value = '';
				document.querySelector("#email").value = '';
				document.querySelector("#password").value = '';
				document.querySelector("#confPass").value = '';
				genders.forEach(gender => gender.checked = false);
				var alertDiv = document.querySelector("#successMessage");
				var message = document.querySelector("#msg");

				alertDiv.classList.remove("invisible");
				alertDiv.classList.add("alert-success");
				message.textContent = data;
				setTimeout(function () {
					alertDiv.classList.add("invisible")
				}, 1500);
			},
			error : function (xhr,status, err) {
				var alertDiv = document.querySelector("#successMessage");
				var message = document.querySelector("#msg");
				switch (xhr.status) {
					case 409:
					alertDiv.classList.remove("invisible");
					alertDiv.classList.add("alert-warning");
					message.textContent = "Email nije dostupan, već je u upotrebi!";
					break;
					case 422:
					alertDiv.classList.remove("invisible");
					alertDiv.classList.add("alert-warning");
					message.textContent = "Greške!";
					break;
				}
			}
		});
	} else {
		console.log("Ima gresaka");
	}
}