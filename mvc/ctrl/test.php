<?php

	echo __FILE__;

	$db = new DB(Config::DSN, Config::USER, Config::PASS);

	var_dump($db);

	$table = 'novadi';
	var_dump($db->get($table));
	