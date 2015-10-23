<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://localhost/moodle';
    var token = '4fb4c41f895ac8340bd6c1c9c48c966c';
    var functionname = 'local_wstemplate_hello_world';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var msj = "Hola mundo torres";
                        
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                welcomemessage: msj
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