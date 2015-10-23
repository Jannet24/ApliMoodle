<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://naynweb.16mb.com/moodle/';
    var token = '98c2833a3c01483037ba40d5774b0bbe';
    var functionname = 'mod_assign_get_grades';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var assignmentids=[3];
    var since = 0;

                        
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                assignmentids: assignmentids,
                since: since

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
