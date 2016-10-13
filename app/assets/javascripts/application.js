function onLogIn(argument) {
	// body...
	document.getElementById("form_id").submit();
}
window.onscroll=function function_name(argument) {
	// body...
	if(window.location.pathname!="/"){
		return
	}
	if(window.scrollY===0){
		document.getElementById("DNAV").style.height='210px';
	document.getElementById("NAV").style.height='210px';
	document.getElementById("mainText").style.lineHeight='210px';
	}
	else{
	document.getElementById("DNAV").style.height='64px';
	document.getElementById("NAV").style.height='64px';
	document.getElementById("mainText").style.lineHeight='64px';
	}
}
function updateStatus(argument) {
	// body...
	document.getElementById("form_id_1").submit();
}
function increaseVotes(e) {
	// body...
	console.log("come on")
	url="/inc/"+e
	window.location=url
}
function logout(argument) {
	// body...
	window.location="/index/logout";
}
function notification(argument) {
	// body...
	window.location="/index/notification"
}
function home(argument) {
	// body...
	window.location="/index/wall"
}
function onNotificationClick(a) {
	// body...

	window.location="/index/wall#"+a
	console.log(a);
}
function message(argument) {
	// body...
	window.location="/index/message"
}
function sendMessage(argument) {
	// body...
	document.getElementById("form_id_2").submit();

}



// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
