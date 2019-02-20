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

function searchBook() {
var book = document.getElementById("book").value;
var author = document.getElementById("author").value;
var code = document.getElementById("code").value;
// Returns successful data submission message when the entered information is stored in database.
var dataStringBook = '&book1=' + book;
var dataStringAuthor = '&author1=' + author;
var dataStringCode = '&code1=' + code;
if (book == '' && author == '' && code == '') {
alert("Please give us some details to search for.");
}
if(book != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/bookname.php",
data: dataStringBook,
cache: false,
success: function(html) {
alert(html);
//var temp=document.getElementById(tablebody).innerHTML;
//var temp = temp.concat(html);
var div=document.getElementById(tablebody);
div.innerHTML=html;
}
});
}
if(author != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/bookauthor.php",
data: dataStringAuthor,
cache: false,
success: function(html) {
alert(html);
}
});
}
if(code != '')
{
// AJAX code to submit form.
jQuery.ajax({
type: "POST",
url: "assets/php/bookcode.php",
data: dataStringCode,
cache: false,
success: function(html) {
alert(html);
}
});
}

return false;
}
