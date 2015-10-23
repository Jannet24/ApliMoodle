<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    var domainname = 'http://localhost/moodle/';
    var token = '98c2833a3c01483037ba40d5774b0bbe';
    var functionname = 'core_calendar_create_calendar_events';
    var serverurl = domainname + '/webservice/rest/server.php' ;
    //add params into data
    var events=[{
        name: "TAREITA 3",
        description: "MI TAREITA 2",
        courseid: 8,
        eventtype: "due",
        timeduration: "1445817600"

    }];   
   /* 
   events[0][name]= string
events[0][description]= string
events[0][format]= int
events[0][courseid]= int
events[0][groupid]= int
events[0][repeats]= int
events[0][eventtype]= string
events[0][timestart]= int
events[0][timeduration]= int
events[0][visible]= int
events[0][sequence]= int
   events["name"]= "Evento2";
    events["description"]= "Es un evento creado por lety";
    events["format"]= 1;
    events["courseid"]= 8;
    events["repeats"]= 0;
    events["eventtype"]= "course";
    events["visible"]= 1;
    events["sequence"]= 1;*/         
    var data = {
                wstoken: token,
                wsfunction: functionname,
                moodlewsrestformat: 'json',
                events: events
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