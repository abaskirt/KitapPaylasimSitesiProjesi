<?php 

$db = new Database();

$tpl = new Template(config_item('template', 'absolute_path'));

//Values
$tpl->set('db', $db);
	


function config_load($name) {
		
	$configuration = array();

	if (!file_exists(dirname(__FILE__) . '/config/' . $name . '.php'))
		die(dirname(__FILE__) . '/config/' . $name . '.php bulunamadı.');

	require(dirname(__FILE__) . '/config/' . $name . '.php');
				
	if (isset($config) AND is_array($config))
		$configuration = array_merge($configuration, $config);
	
	return $configuration;

}


function config_item($name, $item) {
	
	static $config_item = array();

	if (!isset($config_item[$item])) {
	
		$config = config_load($name);

		if (!isset($config[$item]))
			return FALSE;
	
		$config_item[$item] = $config[$item];
		
	}
	
	return $config_item[$item];

}

/**
 * Autoload
 */
function __autoload($class_name) {

	require_once('libraries/' . $class_name . '.php');

}

?>
