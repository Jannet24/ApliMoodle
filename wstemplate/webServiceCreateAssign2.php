<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://localhost:8080/moodle/';
    var token = 'ffbb8173912b313c5010a9f37a8d22e5';
    var functionname = 'local_wstemplate_create_assign';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
           
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                onlinetext: '1',
                file:'1',
                section:'73',
                course:'8',
                name:'Tarea Exito sin time', 
                intro:'Bientos',
                duedate:'1448024400', //fecha de vencimiento
                allowsubmissionsfromdate:'1445346000',//a partir de cuando esta disponible la tarea
                grade:'100',
              //  timemodified:'1445346000',
                maxattempts:'-1'

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
