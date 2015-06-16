function processLogin(){
	var pass = loginForm.pass.value;
	var hash = hex_sha1(pass);
	console.log(hash);
	loginForm.encodePass.value = hash;
	return true;
}