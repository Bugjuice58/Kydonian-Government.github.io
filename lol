<!-- CURRENT USED FORMAT --!>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <!--
    Modified from the Debian original for Ubuntu
    Last updated: 2016-11-16
    See: https://launchpad.net/bugs/1288690
  -->
<title>Welcome To Kydonia</title>
<link rel="stylesheet" type="text/css" href="formatting.css">
  <div class="header-right">
<div class="header">
    <a href="/" class="logo"><img height="25" width="80" src="/resources/Kydonia_Banner.png"></img></a>
    <a class="active" href="/">Home</a>
    <a href="/contact-info.html">Contact</a>
    <a href="/about-kydonia.html">About</a>
  </div>
</div> 
<head>
<script>
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) {elmnt.innerHTML = this.responseText;}
          if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      }      
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
};
</script>
</head>
<div w3-include-html="/base-info.html"></div> 
<script>
includeHTML();
</script>
<h1>Yee</h1>
</script>
