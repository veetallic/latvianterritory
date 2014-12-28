<?php

	/**
	 * Realizē datu bāzes CRUD funkcijas
	 *
	 * @author veetallic
	 */
	class DB extends PDO {

		private $sth;

		public function __construct($dsn, $username, $passwd) {
			try {
				parent::__construct($dsn, $username, $passwd);
				$this->query('SET NAMES "utf8"');
			} catch (PDOException $e) {
				exit($e->getMessage());
			}
		}

		public function get($table) {
			$query = 'select * from `' . $table . '`';
			return $this->query($query, PDO::FETCH_OBJ)->fetchAll();
		}

	}
	