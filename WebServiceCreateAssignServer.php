<?php

// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * External Web Service Template
 *
 * @package    localwstemplate
 * @copyright  2011 Moodle Pty Ltd (http://moodle.com)
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
require_once($CFG->libdir . "/externallib.php");

class local_wstemplate_external extends external_api {

    /**
     * Returns description of method parameters
     * @return external_function_parameters
     */
    public static function quiz_parameters() {
        return new external_function_parameters(
                array('welcomemessage' => new external_value(PARAM_TEXT, 'The welcome message. By default it is "Hello world quiz1,"', VALUE_DEFAULT, 'Hola mundo, '))
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */
    public static function quiz($welcomemessage = 'Hello world quiz, ') {
        global $USER;
	global $DB;

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters(self::quiz_parameters(),
                array('welcomemessage' => $welcomemessage));

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);
	$tarea= $DB->get_record("assign", array('course'=>'6'));

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }

        return $params['welcomemessage'] . $tarea->intro ;
    }

    /**
     * Returns description of method result value
     * @return external_description
     */
    public static function quiz_returns() {
        return new external_value(PARAM_TEXT, 'The welcome message + user first nameee');
    }
    public static function hello_world_parameters() {
        return new external_function_parameters(
                array('curso' => new external_value(PARAM_INT, 'The welcome message. By default it is "Hello world,"'))
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */
    public static function hello_world($curso) {
        global $USER;
        global $DB;

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters(self::hello_world_parameters(),
                array('curso' => $id));

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }
        $temas = $DB->get_records('course_sections', array('course' => $curso));
        //$intro = strip_tags($tarea->intro);
        $titulos=array();
        $tit=array();
        //$summary=array();
        foreach ($temas as $tema) {
            $titulos['nombre']= $tema->name;
            //$a= str_replace("<p>","",$tema->summary);
            //$a= str_replace("<",'',$tema->summary);
            $titulos['summary']=$tema->summary;
            $t=(object)$titulos;
            $tit[] = (array)$t;
        }

        //$datos = array('titulos' => $titulo, 'summary' =>$summary);
        /*$result = array(
            'titulos' => $titulo,
            'unidades' => $summary
        );*/
        return $tit;
    }

    /**
     * Returns description of method result value
     * @return external_description
     */


  
    
public static function hello_world_returns() {
/* return new external_value(PARAM_TEXT, 'The welcome message + user first name');*/
       return new external_multiple_structure(
           new external_single_structure(
                array(
                    'nombre'=> new external_value(PARAM_RAW, 'The welcome message + user first name'),
                    'summary'=>new external_value(PARAM_RAW, 'The welcome message + user first name')
                    )
                    )
        );

    }
    /*************/
    public static function create_quiz_parameters() {
        return new external_function_parameters(
                array('name' => new external_value(PARAM_TEXT, 'The welcome message. By default it is "Hello world,"'),
                    'displayorder' => new external_value(PARAM_INT, 'The welcome message. By default it is "Hello world,"'))
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */
    public static function create_quiz($name,$displayorder) {
        global $USER;
        global $DB;

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters(self::create_quiz_parameters(),
                array('name' => $name,'displayorder' => $displayorder));

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }
        $record = new stdClass();
        $record -> name = $name;
        $record -> displayorder = $displayorder;
        
        $temas = $DB->insert_record('quiz_reports',$record,false);
        
        //$intro = strip_tags($tarea->intro);
       

        //$datos = array('titulos' => $titulo, 'summary' =>$summary);
        /*$result = array(
            'titulos' => $titulo,
            'unidades' => $summary
        );*/
        return $record;
    }

    /**
     * Returns description of method result value
     * @return external_description
     */


  
    
public static function create_quiz_returns() {
/* return new external_value(PARAM_TEXT, 'The welcome message + user first name');*/
       return new external_multiple_structure(
           new external_single_structure(
                array(
                    'nombre'=> new external_value(PARAM_RAW, 'The welcome message + user first name'),
                    'summary'=>new external_value(PARAM_RAW, 'The welcome message + user first name')
                    )
                    )
        );

    }
    /*------------------------------------------------------*/
    public static function create_assign_parameters() {
        return new external_function_parameters(
                array(
                    'onlinetext' => new external_value(PARAM_INT, 'Id of the section'),
                    'file'  => new external_value(PARAM_INT, 'Id of the section'),
                    'section'  => new external_value(PARAM_INT, 'Id of the section'),
                    'course' => new external_value(PARAM_INT, 'id of the course'),
                    'name' => new external_value(PARAM_TEXT, 'The welcome message. By default it is "Hello world,"'),
                    'intro' => new external_value(PARAM_TEXT, 'intro'),
                    'duedate' => new external_value(PARAM_INT, ''),
                    'allowsubmissionsfromdate' => new external_value(PARAM_INT, ''),
                    'grade' => new external_value(PARAM_INT, ''),
                    'timemodified' => new external_value(PARAM_INT, ''),
                    'maxattempts' => new external_value(PARAM_INT, ''))
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */

    public static function create_assign($text,$file,$section,$course,$name,$intro,$duedate,$allowsubmissionsfromdate,$grade,$timemodified,$maxattempts) {
        global $USER;
        global $DB;
       

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters(self::create_assign_parameters(),
                array(
                    'onlinetext' => $text,
                    'file' => $file,
                    'section'  => $section,
                    'course' => $course,
                    'name' => $name, 
                    'intro' => $intro,
                    'duedate' => $duedate, 
                    'allowsubmissionsfromdate' => $allowsubmissionsfromdate,
                    'grade' => $grade,
                    'timemodified' => $timemodified,
                    'maxattempts' => $maxattempts
                    ));
       $time = time();

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }
        $record = new stdClass();
        $record -> course = $course;
        $record -> name = $name;
        $record -> intro = $intro;
        $record -> introformat = '1';
        $record -> alwaysshowdescription = '1';
        $record -> duedate = $duedate;
        $record -> allowsubmissionsfromdate =$allowsubmissionsfromdate;
        $record -> grade = $grade;
        $record -> timemodified = $timemodified;
        $record -> maxattempts = $maxattempts;
        
        $idAssign = $DB->insert_record('assign',$record,true);
        
      //  $instanceDB =$DB->get_record_sql('SELECT MAX(id) FROM {assign}');
       // foreach ($instanceDB as $id) {
         //           $idInstance = (int) $id;
           //     }
       
        $dataModules = new stdClass();
        $dataModules -> course = $course;
        $dataModules -> module = '1';
        $dataModules -> instance = (int)$idAssign;//$idInstance;
        $dataModules -> section = $section;
        $dataModules -> added = $time;
        $insertModules = $DB->insert_record('course_modules',$dataModules,true);
        
        $getSequenceDB =$DB->get_record_sql('SELECT sequence FROM {course_sections} WHERE id='.$section.'');
        foreach ($getSequenceDB as $s) {
                    $sequence = (string) $s;
               }
        $newSequence= new stdclass();
        $newSequence->id = $section;
        if ($sequence){
            $newSequence -> sequence = $sequence . ','. $insertModules;
        }
        else{
            $newSequence -> sequence = $insertModules;
        }
        
        
        $insertSection = $DB->update_record('course_sections',$newSequence,false);

        $dataEvent = new stdClass();
        $dataEvent -> name = $name;
        $dataEvent -> description = $intro;
        $dataEvent -> format = '1';
        $dataEvent -> courseid = $course;
        $dataEvent -> userid = $USER->id;
        $dataEvent -> modulename = 'assign';
        $dataEvent -> instance = $idAssign; 
        $dataEvent -> eventtipy = 'due';
        $dataEvent -> timestart = $duedate;
        $dataEvent -> timemodified = $timemodified;
        $insertAssign = $DB->insert_record('event',$dataEvent,false);

        $newTimeCourse= new stdclass();
        $newTimeCourse->id = $course;
        $newTimeCourse -> cacherev = $time;
        
        $insertSection = $DB->update_record('course',$newTimeCourse,false);

        $gradeCategoryDB =$DB->get_record_sql('SELECT id FROM {grade_categories} WHERE courseid='.$course.'');
        
        if ($gradeCategoryDB){
            foreach ($gradeCategoryDB as $id) {
                    $idGradeCategory = (string) $id;
               }
        }
        else{
            $dataGC= new stdclass();
            $dataGC-> courseid = $course;
            $dataGC-> depth = '1';
            $dataGC-> fullname = '?';
            $dataGC-> aggregation= '11';
            $dataGC-> aggregattimecreated= '1'; 
            $dataGC->timecreated= $time;
            $dataGC->timemodified= $time;
            $idGradeCategory = $DB->insert_record('grade_categories',$dataGC,true);
        }
      
        $newPath = new stdclass();
        $newPath -> id = $idGradeCategory;
        $newPath -> path = '/' . $idGradeCategory . '/';
        
        $insertPathCategory = $DB->update_record('grade_categories',$newPath,false);
        $getSortorder = $DB->get_record_sql('SELECT max(sortorder) FROM {grade_items}');
        foreach ($getSortorder as $id) {
                    $sortorder = (int) $id;
               }

        $dataGradeItem= new stdclass();
        $dataGradeItem-> courseid = $course;
        $dataGradeItem-> categoryid = $idGradeCategory;
        $dataGradeItem-> itemname = $name;
        $dataGradeItem-> itemtype= 'mod';
        $dataGradeItem-> itemmodule= 'assign'; 
        $dataGradeItem-> iteminstance= $idAssign;
        $dataGradeItem-> itemnumber = '0';
        $dataGradeItem-> grademax = $grade;
        $dataGradeItem-> sortorder = $sortorder;
        $dataGradeItem-> timecreated = $time;
        $dataGradeItem-> timemodified= $time;

        $insertGradeItem = $DB->insert_record('grade_items',$dataGradeItem,true);
  
        $getPathContextCat = $DB->get_record_sql('SELECT path FROM {context} WHERE contextlevel = 50 and instanceid = '.$course.'', array(1));
              
        foreach ($getPathContextCat as $pathCa) {
                    $pathCategory = (string) $pathCa;
               }
        $dataContext= new stdclass();
        $dataContext-> contextlevel = '70';
        $dataContext-> instanceid = $insertModules;
        $dataContext-> depth = '4';
        $insertContext = $DB->insert_record('context',$dataContext,true);

        $pathContext= new stdclass();
        $pathContext -> id = $insertContext;
        $pathContext-> path = $pathCategory . '/' . $insertContext;

        $updatePathContext = $DB->update_record('context',$pathContext,false);

        $dataGradingA= new stdclass();
        $dataGradingA-> contextid = $insertContext;
        $dataGradingA-> component = 'mod_assign';
        $dataGradingA-> areaneme = 'submissions';

        $insertGradingAreas = $DB->insert_record('grading_areas',$dataGradingA,true);

        $dataAp1= new stdclass();
        $dataAp1-> assignment = $idAssign;
        $dataAp1-> plugin= 'onlinetext';
        $dataAp1-> subtype = 'assignsubmission';
        $dataAp1-> name = 'enabled';
        $dataAp1-> value = $text;

        $dataAp2= new stdclass();
        $dataAp2-> assignment = $idAssign;
        $dataAp2-> plugin= 'onlinetext';
        $dataAp2-> subtype = 'assignsubmission';
        $dataAp2-> name = 'wordlimit';
        $dataAp2-> value = '0';

        $dataAp3= new stdclass();
        $dataAp3-> assignment = $idAssign;
        $dataAp3-> plugin= 'onlinetext';
        $dataAp3-> subtype = 'assignsubmission';
        $dataAp3-> name = 'wordlimitenabled';
        $dataAp3-> value = '0';

        $dataAp4= new stdclass();
        $dataAp4-> assignment = $idAssign;
        $dataAp4-> plugin= 'file';
        $dataAp4-> subtype = 'assignsubmission';
        $dataAp4-> name = 'enabled';
        $dataAp4-> value = $file;

        $dataAp5= new stdclass();
        $dataAp5-> assignment = $idAssign;
        $dataAp5-> plugin= 'file';
        $dataAp5-> subtype = 'assignsubmission';
        $dataAp5-> name = 'maxfilesubmissions';
        $dataAp5-> value = '1';

        $dataAp6= new stdclass();
        $dataAp6-> assignment = $idAssign;
        $dataAp6-> plugin= 'file';
        $dataAp6-> subtype = 'assignsubmission';
        $dataAp6-> name = 'maxsubmissionsizebytes';
        $dataAp6-> value = '1048576';

        $dataAp7= new stdclass();
        $dataAp7-> assignment = $idAssign;
        $dataAp7-> plugin= 'comments';
        $dataAp7-> subtype = 'assignsubmission';
        $dataAp7-> name = 'enabled';
        $dataAp7-> value = '1';

        $dataAp8= new stdclass();
        $dataAp8-> assignment = $idAssign;
        $dataAp8-> plugin= 'comments';
        $dataAp8-> subtype = 'assignfeedback';
        $dataAp8-> name = 'enabled';
        $dataAp8-> value = '1';

        $dataAp9= new stdclass();
        $dataAp9-> assignment = $idAssign;
        $dataAp9-> plugin= 'comments';
        $dataAp9-> subtype = 'assignfeedback';
        $dataAp9-> name = 'commentinline';
        $dataAp9-> value = '0';

        $dataAp10= new stdclass();
        $dataAp10-> assignment = $idAssign;
        $dataAp10-> plugin= 'editpdf';
        $dataAp10-> subtype = 'assignfeedback';
        $dataAp10-> name = 'enabled';
        $dataAp10-> value = '0';

        $dataAp11= new stdclass();
        $dataAp11-> assignment = $idAssign;
        $dataAp11-> plugin= 'offline';
        $dataAp11-> subtype = 'assignfeedback';
        $dataAp11-> name = 'enabled';
        $dataAp11-> value = '0';
        
        $dataAp12= new stdclass();
        $dataAp12-> assignment = $idAssign;
        $dataAp12-> plugin= 'file';
        $dataAp12-> subtype = 'assignfeedback';
        $dataAp12-> name = 'enabled';
        $dataAp12-> value = '0';

        $dataApGrl  =  array($dataAp1, $dataAp2,$dataAp3,$dataAp4,$dataAp5,$dataAp6,$dataAp7,$dataAp8,$dataAp9,$dataAp10,$dataAp11,$dataAp12);


        $insertContext = $DB->insert_records('assign_plugin_config',$dataApGrl);
      
    }

  
public static function create_assign_returns() {
       return new external_multiple_structure(
           new external_single_structure(
                array(
                    'nombres'=> new external_value(PARAM_RAW, 'The welcome message + user first name'),
                    'summarys'=>new external_value(PARAM_RAW, 'The welcome message + user first name')
                    )
                    )
        );

    }
    public static function create_modules_parameters() {
        return new external_function_parameters(
                array('assignment' => new external_value(PARAM_INT, 'intro'),
                    'valuetext' => new external_value(PARAM_INT, 'intro'),
                    'valuefile' => new external_value(PARAM_INT, 'intro')
                    )
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */

    public static function create_modules($assign,$text,$file) {
        global $USER;
        global $DB;

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters(self::create_modules_parameters(),
                array(
                    'assignment' => $assign,
                    'valuetext' => $text,
                     'valuefile' => $file                   
                    ));

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }
        $dataAp1= new stdclass();
        $dataAp1-> assignment = $assign;
        $dataAp1-> plugin= 'onlinetext';
        $dataAp1-> subtype = 'assignsubmission';
        $dataAp1-> name = 'enabled';
        $dataAp1-> value = $text;

        $dataAp2= new stdclass();
        $dataAp2-> assignment = $assign;
        $dataAp2-> plugin= 'onlinetext';
        $dataAp2-> subtype = 'assignsubmission';
        $dataAp2-> name = 'wordlimit';
        $dataAp2-> value = '0';

        $dataAp3= new stdclass();
        $dataAp3-> assignment = $assign;
        $dataAp3-> plugin= 'onlinetext';
        $dataAp3-> subtype = 'assignsubmission';
        $dataAp3-> name = 'wordlimitenabled';
        $dataAp3-> value = '0';

        $dataAp4= new stdclass();
        $dataAp4-> assignment = $assign;
        $dataAp4-> plugin= 'file';
        $dataAp4-> subtype = 'assignsubmission';
        $dataAp4-> name = 'enabled';
        $dataAp4-> value = $file;

        $dataAp5= new stdclass();
        $dataAp5-> assignment = $assign;
        $dataAp5-> plugin= 'file';
        $dataAp5-> subtype = 'assignsubmission';
        $dataAp5-> name = 'maxfilesubmissions';
        $dataAp5-> value = '1';

        $dataAp6= new stdclass();
        $dataAp6-> assignment = $assign;
        $dataAp6-> plugin= 'file';
        $dataAp6-> subtype = 'assignsubmission';
        $dataAp6-> name = 'maxsubmissionsizebytes';
        $dataAp6-> value = '1048576';

        $dataAp7= new stdclass();
        $dataAp7-> assignment = $assign;
        $dataAp7-> plugin= 'comments';
        $dataAp7-> subtype = 'assignsubmission';
        $dataAp7-> name = 'enabled';
        $dataAp7-> value = '1';

        $dataAp8= new stdclass();
        $dataAp8-> assignment = $assign;
        $dataAp8-> plugin= 'comments';
        $dataAp8-> subtype = 'assignfeedback';
        $dataAp8-> name = 'enabled';
        $dataAp8-> value = '1';

        $dataAp9= new stdclass();
        $dataAp9-> assignment = $assign;
        $dataAp9-> plugin= 'comments';
        $dataAp9-> subtype = 'assignfeedback';
        $dataAp9-> name = 'commentinline';
        $dataAp9-> value = '0';

        $dataAp10= new stdclass();
        $dataAp10-> assignment = $assign;
        $dataAp10-> plugin= 'editpdf';
        $dataAp10-> subtype = 'assignfeedback';
        $dataAp10-> name = 'enabled';
        $dataAp10-> value = '0';

        $dataAp11= new stdclass();
        $dataAp11-> assignment = $assign;
        $dataAp11-> plugin= 'offline';
        $dataAp11-> subtype = 'assignfeedback';
        $dataAp11-> name = 'enabled';
        $dataAp11-> value = '0';
        
        $dataAp12= new stdclass();
        $dataAp12-> assignment = $assign;
        $dataAp12-> plugin= 'file';
        $dataAp12-> subtype = 'assignfeedback';
        $dataAp12-> name = 'enabled';
        $dataAp12-> value = '0';

        $dataApGrl  =  array($dataAp1, $dataAp2,$dataAp3,$dataAp4,$dataAp5,$dataAp6,$dataAp7,$dataAp8,$dataAp9,$dataAp10,$dataAp11,$dataAp12);


        $insertContext = $DB->insert_records('assign_plugin_config',$dataApGrl);

      
    }

    /**
     * Returns description of method result value
     * @return external_description
     */

   
public static function create_modules_returns() {
/* return new external_value(PARAM_TEXT, 'The welcome message + user first name');*/
       return new external_multiple_structure(
           new external_single_structure(
                array(
                    'nombres'=> new external_value(PARAM_RAW, 'The welcome message + user first name'),
                    'summarys'=>new external_value(PARAM_RAW, 'The welcome message + user first name')
                    )
                    )
        );

    }
}
