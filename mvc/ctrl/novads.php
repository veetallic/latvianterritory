<?php

	if (!defined('INDEX'))
		exit;

	if (isset($uri[1])) {
		$db = new DB(Config::DSN, Config::USER, Config::PASS);

		$query = 'SELECT
				n.`id`,
				n.`tips`,
				concat(n.nosaukums, " ", t.nosaukums) as `nosaukums`,
				concat(n.`paklauts`, " ", n2.`nosaukums`, " ", t2.`nosaukums`) as `paklauts`
			FROM `novadi` n
			INNER JOIN `tipi` t
			ON t.`id` = n.`tips`
			LEFT JOIN `novadi` n2
				ON n2.`id` = n.`paklauts`
			LEFT JOIN `tipi` t2
				ON t2.`id` = n2.`tips`
			WHERE
				n.`id` = :novads
			OR
				n.`paklauts` = :pagasti
			ORDER BY
				n.`id`';

		$params = array(
		    'novads' => $uri[1],
		    'pagasti' => $uri[1]
		);

		$res = $db->query($query, $params);

		require 'mvc' . DIRECTORY_SEPARATOR . 'view' . DIRECTORY_SEPARATOR . 'test.html';
	} else {
		header('Location: ' . rtrim($_SERVER['REQUEST_URI'], '/') . '/1');
	}
	