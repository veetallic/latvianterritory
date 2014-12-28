<?php

	define('INDEX', TRUE);

	header('Content-Type: text/html;charset=utf-8');

	function __autoload($class) {
		require 'core' . DIRECTORY_SEPARATOR . $class . '.php';
	}

	$uri = trim($_SERVER['REQUEST_URI'], '/');
	$ctrl = $uri ? $uri : Config::DEFAULT_CONTROLLER;

	var_dump($ctrl);

	$ctrl = 'mvc' . DIRECTORY_SEPARATOR . 'ctrl' . DIRECTORY_SEPARATOR . $ctrl . '.php';

	if (file_exists($ctrl))
		require $ctrl;

	