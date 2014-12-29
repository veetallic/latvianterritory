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
			$res = FALSE;

			try {
				$res = $this->query($query);
			} catch (PDOException $e) {
				exit($e->getMessage());
			}

			return $res;
		}

		public function query($query, $params = NULL) {
			$res = FALSE;

			if (!$params) {
				try {
					$res = parent::query($query, PDO::FETCH_OBJ)->fetchAll();
				} catch (PDOException $e) {
					exit($e->getMessage());
				}
			} else {
				try {
					$this->sth = $this->prepare($query);
					$this->sth->execute($params);
					$this->sth->setFetchMode(PDO::FETCH_OBJ);
					$res = $this->sth->fetchAll();
				} catch (PDOException $e) {
					exit($e->getMessage());
				}
			}

			return $res;
		}

	}
	