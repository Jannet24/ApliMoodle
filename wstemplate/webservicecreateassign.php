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
    public static function create_assign_parameters() {
        return new external_function_parameters(
                array('curso' => new external_value(PARAM_INT, 'parametros para crear'))
        );
    }

    /**
     * Returns welcome message
     * @return string welcome message
     */
    public static function create_assign($name,$description,$courseid,$timestart,$timeduration,$modulename,$instance) {
        global $USER;
        global $DB;

        //Parameter validation
        //REQUIRED
        $params = self::validate_parameters( self::create_assign_parameters(),
                array(
                    'name' => $name,
                    'description' => $description,
                    'courseid' => $courseid,
                    'instance' => $instance,
                    'timestart' => $timestart,
                    'timeduration' => $timeduration,
                    'modulename' => $modulename));

        //Context validation
        //OPTIONAL but in most web service it should present
        $context = get_context_instance(CONTEXT_USER, $USER->id);
        self::validate_context($context);

        //Capability checking
        //OPTIONAL but in most web service it should present
        if (!has_capability('moodle/user:viewdetails', $context)) {
            throw new moodle_exception('cannotviewprofile');
        }
        $registro = new stdClass();
        $registro->name = $name;
        $registro->description = $description;
        $registro->courseid =$courseid;
       // $registro->userid =$userid;
        $registro->instance = $instance;
        $registro->timestart = $timestart;
        $registro->timeduration =$timeduration;
        $registro->modulename = $modulename;


        $event = $DB->insert_records('event', $registro)


        return $event;
    }

    /**
     * Returns description of method result value
     * @return external_description
     */
    public static function create_assign_returns() {
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