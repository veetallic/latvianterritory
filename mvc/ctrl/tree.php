<?php

	if (!defined('INDEX'))
		exit;

	$db = new DB(Config::DSN, Config::USER, Config::PASS);

	$table = 'novadi';

	if (isset($uri[1])) {
		$where = array(
		    'id' => $uri[1],
		    'paklauts' => $uri[1]
		);

		$db->where($where, DB::Condition_OR);
	}
	
	$res = $db->get($table, PDO::FETCH_ASSOC);

	$tree = new Tree($res, 'paklauts', 'paklautie');

	$t = $tree->displayTree('nosaukums', 'ol');

	require 'mvc' . DIRECTORY_SEPARATOR . 'view' . DIRECTORY_SEPARATOR . 'tree.html';
	