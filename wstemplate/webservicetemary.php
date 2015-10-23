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
        $params = self::validate_parameters( self::hello_world_parameters(),
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
}	