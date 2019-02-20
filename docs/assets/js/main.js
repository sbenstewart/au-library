function loginUser() {
var roll = document.getElementById("roll").value;
var password = document.getElementById("password").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + roll + '&password1=' + password;
if (roll == '' || password == '') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/loginuser.php",
data: dataString,
cache: false,
success: function(html) {
if(html.startsWith("Logged")){window.location = "borrowed-books.html";}
else{alert(html);}
}
});
}
return false;
}



function forgotPassword() {
var roll = document.getElementById("roll").value;
// Returns successful data submission message when the entered information is stored in database.
var dataString = '&roll1=' + roll;
if (roll == '') {
alert("Please Fill All Fields");
} else {
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/forgotpassword.php",
data: dataString,
cache: false,
success: function(html) {
alert(html);
}
});
}
return false;
}
