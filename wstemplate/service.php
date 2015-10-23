<?php
require('../config.php');
require_once($CFG->libdir.'/adminlib.php');
require_once("$CFG->libdir/externallib.php");
defined('MOODLE_INTERNAL') || die;

$protocol = 'soap';
$token = '90edcf5b4b1b0f35e80672d49543cd49';
$function = 'local_wstemplate_hello_world';
require_once("$CFG->dirroot/webservice/$protocol/locallib.php");
$testclientclass = "webservice_{$protocol}_test_client";
if(!class_exists($testclientclass)){
	throw new coding_exception('Missing WS test class in protocol'.$protocol);
}

$testclient = new $testclientclass();
$serverurl = "http://localhost/moodle1/webservice/$protocol/";
$serverurl .= 'server.php';
$serverurl .= '?wstoken'.urlencode($token);
$params = array('welcomemessage' =>'hola este es un mensaje de tst ws con este usuarios => ');
try{
	$response = $testclient -> simpletest($serverurl,$function,$params);
	print_object($response);
}catch(Exception $ex){
	echo str_replace("\n",'<br/>',s($ex));
	}