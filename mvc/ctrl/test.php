<?php

	if (!defined('INDEX'))
		exit;

	$db = new DB(Config::DSN, Config::USER, Config::PASS);

	$table = 'novadi';
	$res = $db->get($table);

	require 'mvc' . DIRECTORY_SEPARATOR . 'view' . DIRECTORY_SEPARATOR . 'test.html';
	