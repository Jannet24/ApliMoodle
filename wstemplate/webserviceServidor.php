<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://naynweb.16mb.com/moodle/';
    var token = '7c04cafbadfa16d5eeb9444e512a56d5';
    var functionname = 'core_enrol_get_users_courses';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var id = 3;
                        
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                userid: id
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