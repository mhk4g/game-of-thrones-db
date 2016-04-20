<html background-color>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script type="text/javascript" language="javascript">

function sendRequest() {
    var httpRequest;
    var post_string = prepareUserInput();
    
    // BEGIN OBLIGATORY AJAX STUFF //
    if (window.XMLHttpRequest) { // Mozilla, Safari, ...
        httpRequest = new XMLHttpRequest();
        if (httpRequest.overrideMimeType) {
            httpRequest.overrideMimeType('text/xml'); } } 
    else if (window.ActiveXObject) { // IE
        try { httpRequest = new ActiveXObject("Msxml2.XMLHTTP"); } 
            catch (e) { try { httpRequest = new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {} } }
    if (!httpRequest) { alert('Giving up :( Cannot create an XMLHTTP instance'); return false; }
    // END OBLIGATORY AJAX STUFF //
    
    httpRequest.onreadystatechange = function() { displayResults(httpRequest); };
    httpRequest.open('POST', 'process_search.php', true);
    httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    httpRequest.send(post_string);
  }
  
function displayResults(httpRequest) {
  if (httpRequest.readyState == 4) {
      if (httpRequest.status == 200) {
          document.getElementById("searchresults").innerHTML = httpRequest.responseText;
          document.getElementById("specialinput").value = "";
        } 
    }
  }

function prepareUserInput() {
    temp_string = "userinput=" + document.getElementById("specialinput").value;
    return temp_string;
}

$(document).keypress(function(e) {
        if(e.which == 13) {
                sendRequest();
        }
        });

</script>
<head>
    <link type="text/css" rel="stylesheet" href="login_style.css"/>
    <title>Game of Thrones DB: Login</title>
</head>
<body bgcolor="black">
    <div class="input-box" width=200px>
        <p class="login-label">Email</p><input class="login-field" id="email" name="email" type="text" placeholder="Enter your email address" autofocus="autofocus" autocomplete="off" required width="200px"/>
        <br>
        <p class="login-label">Password</p><input class="login-field" id="password" name="password" type="password" placeholder="Enter your password" autocomplete="off" required />
        <br><br>
        <input type="submit" id="submit" name="submit" value="Login">
        <br><br>
        <input type="button" value="Create Account">
        <br><br><p class="proceed">Proceed without logging in</p>
    </div>
</body>
