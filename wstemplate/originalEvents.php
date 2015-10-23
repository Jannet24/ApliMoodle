 <?php 
    public static function create_calendar_events_parameters() {
        // Userid is always current user, so no need to get it from client.
        // Module based calendar events are not allowed here. Hence no need of instance and modulename.
        // subscription id and uuid is not allowed as this is not an ical api.
        return new external_function_parameters(
                array('events' => new external_multiple_structure(
                        new external_single_structure(
                            array(
                                'name' => new external_value(PARAM_TEXT, 'event name', VALUE_REQUIRED, '', NULL_NOT_ALLOWED),
                                'description' => new external_value(PARAM_RAW, 'Description', VALUE_DEFAULT, null, NULL_ALLOWED),
                                'format' => new external_format_value('description', VALUE_DEFAULT),
                                'courseid' => new external_value(PARAM_INT, 'course id', VALUE_DEFAULT, 0, NULL_NOT_ALLOWED),
                                'groupid' => new external_value(PARAM_INT, 'group id', VALUE_DEFAULT, 0, NULL_NOT_ALLOWED),
                                'repeats' => new external_value(PARAM_INT, 'number of repeats', VALUE_DEFAULT, 0, NULL_NOT_ALLOWED),
                                'eventtype' => new external_value(PARAM_TEXT, 'Event type', VALUE_DEFAULT, 'user', NULL_NOT_ALLOWED),
                                'timestart' => new external_value(PARAM_INT, 'timestart', VALUE_DEFAULT, time(), NULL_NOT_ALLOWED),
                                'timeduration' => new external_value(PARAM_INT, 'time duration', VALUE_DEFAULT, 0, NULL_NOT_ALLOWED),
                                'visible' => new external_value(PARAM_INT, 'visible', VALUE_DEFAULT, 1, NULL_NOT_ALLOWED),
                                'sequence' => new external_value(PARAM_INT, 'sequence', VALUE_DEFAULT, 1, NULL_NOT_ALLOWED),
                            ), 'event')
                )
            )
        );
    }

    /**
     * Delete Calendar events.
     *
     * @param array $events A list of events to create.
     * @return array array of events created.
     * @since Moodle 2.5
     * @throws moodle_exception if user doesnt have the permission to create events.
     */
    public static function create_calendar_events($events) {
        global $CFG, $DB, $USER;
        require_once($CFG->dirroot."/calendar/lib.php");

        // Parameter validation.
        $params = self::validate_parameters(self::create_calendar_events_parameters(), array('events' => $events));

        $transaction = $DB->start_delegated_transaction();
        $return = array();
        $warnings = array();

        foreach ($params['events'] as $event) {

            // Let us set some defaults.
            $event['userid'] = $USER->id;
            $event['modulename'] = '';
            $event['instance'] = 0;
            $event['subscriptionid'] = null;
            $event['uuid']= '';
            $event['format'] = external_validate_format($event['format']);
            if ($event['repeats'] > 0) {
                $event['repeat'] = 1;
            } else {
                $event['repeat'] = 0;
            }

            $eventobj = new calendar_event($event);

            // Let's check if the user is allowed to delete an event.
            if (!calendar_add_event_allowed($eventobj)) {
                $warnings [] = array('item' => $event['name'], 'warningcode' => 'nopermissions', 'message' => 'you do not have permissions to create this event');
                continue;
            }
            // Let's create the event.
            $var = $eventobj->create($event);
            $var = (array)$var->properties();
            if ($event['repeat']) {
                $children = $DB->get_records('event', array('repeatid' => $var['id']));
                foreach ($children as $child) {
                    $return[] = (array) $child;
                }
            } else {
                $return[] = $var;
            }
        }

        // Everything done smoothly, let's commit.
        $transaction->allow_commit();
        return array('events' => $return, 'warnings' => $warnings);
    }

    /**
     * Returns description of method result value.
     *
     * @return external_description.
     * @since Moodle 2.5
     */
    public static function  create_calendar_events_returns() {
            return new external_single_structure(
                    array(
                        'events' => new external_multiple_structure( new external_single_structure(
                                array(
                                    'id' => new external_value(PARAM_INT, 'event id'),
                                    'name' => new external_value(PARAM_TEXT, 'event name'),
                                    'description' => new external_value(PARAM_RAW, 'Description', VALUE_OPTIONAL),
                                    'format' => new external_format_value('description'),
                                    'courseid' => new external_value(PARAM_INT, 'course id'),
                                    'groupid' => new external_value(PARAM_INT, 'group id'),
                                    'userid' => new external_value(PARAM_INT, 'user id'),
                                    'repeatid' => new external_value(PARAM_INT, 'repeat id', VALUE_OPTIONAL),
                                    'modulename' => new external_value(PARAM_TEXT, 'module name', VALUE_OPTIONAL),
                                    'instance' => new external_value(PARAM_INT, 'instance id'),
                                    'eventtype' => new external_value(PARAM_TEXT, 'Event type'),
                                    'timestart' => new external_value(PARAM_INT, 'timestart'),
                                    'timeduration' => new external_value(PARAM_INT, 'time duration'),
                                    'visible' => new external_value(PARAM_INT, 'visible'),
                                    'uuid' => new external_value(PARAM_TEXT, 'unique id of ical events', VALUE_OPTIONAL, '', NULL_NOT_ALLOWED),
                                    'sequence' => new external_value(PARAM_INT, 'sequence'),
                                    'timemodified' => new external_value(PARAM_INT, 'time modified'),
                                    'subscriptionid' => new external_value(PARAM_INT, 'Subscription id', VALUE_OPTIONAL),
                                ), 'event')
                        ),
                      'warnings' => new external_warnings()
                    )
            );
    }