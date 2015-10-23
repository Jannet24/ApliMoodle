<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://naynweb.16mb.com/moodle/';
    var token = '98c2833a3c01483037ba40d5774b0bbe';
    var functionname = 'local_mobile_core_comment_get_comments';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var contextlevel = "context_module";
    var instanceid =  70;
    var component = "assign";
    var itemid= 2;

    var area ="";
    var page = 0;

                        
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                contextlevel: contextlevel,
                instanceid: instanceid,
                component: component,
                itemid: itemid,
                area: area,
                page: page

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
