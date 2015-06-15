function processLogin(){
	var pass = loginForm.pass.value;
	var hash = hex_sha1(pass);
	loginForm.encodePass.value = hash;
	return true;
}