<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://localhost/moodle/';
    var token = 'ffbb8173912b313c5010a9f37a8d22e5';
    var functionname = 'local_wstemplate_create_quiz';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data

    var name = 'poverview';
    var displayorder = '100003';
                  
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                name: name,
                displayorder: displayorder

                }
    var response = $.ajax(
                            {   type: 'POST',
                                data: data,
                                url: serverurl
                            }
                         );
    console.info(response);
});
</script>
</head>
<body>
    Check your Javascript console for the "responseText" value.
</body>
</html>
