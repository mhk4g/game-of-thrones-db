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
    <link type="text/css" rel="stylesheet" href="style.css"/>
    <title>Game of Thrones DB</title>
</head>
<body bgcolor="black">
    <div class="input-box">
  <input id="specialinput" name="userinput" type='text' placeholder="Enter your search here" autofocus="autofocus" autocomplete="off" required></input>
  <span class="unit">&#9819;</span>
  <div id="resultcontainer">
      <div id="searchresults">
          <!-- This is where the results go -->
      </div>
  </div>

</div>
</body>
