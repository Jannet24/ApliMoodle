<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://naynweb.16mb.com/moodle/';
    var token = '98c2833a3c01483037ba40d5774b0bbe';
    var functionname = 'local_mobile_core_grades_get_grades';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var id = 7;
    userids[0]= int
                        
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