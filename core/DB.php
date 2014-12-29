<?php

	/**
	 * Realizē datu bāzes CRUD funkcijas
	 *
	 * @author veetallic
	 */
	class DB extends PDO {

		const
			Condition_AND = ' AND ',
			Condition_OR = ' OR ';

		private
			$sth,
			$where,
			$condition = NULL;

		public function __construct($dsn, $username, $passwd) {
			try {
				parent::__construct($dsn, $username, $passwd);
				parent::query('SET NAMES "utf8"');
			} catch (PDOException $e) {
				exit($e->getMessage());
			}
		}

		public function where($filter, $condition = self::Condition_AND) {
			$this->where = '';
			$this->condition = $filter;

			foreach ($filter as $field => $value) {
				$this->where .= (!$this->where) ? ' WHERE ' : ' ' . $condition . ' ';
				$this->where .= '`' . $field . '` = :' . $field;
			}

			return $this;
		}

		public function get($table, $fetchMode = PDO::FETCH_OBJ) {
			$query = 'SELECT * FROM `' . $table . '`' . $this->where;
			$res = FALSE;

			try {
				$res = $this->query($query, $this->condition, $fetchMode);
			} catch (PDOException $e) {
				exit($e->getMessage());
			}

			return $res;
		}

		public function query($query, $params = NULL, $fetchMode = PDO::FETCH_OBJ) {
			$res = FALSE;

			if (!$params) {
				try {
					$res = parent::query($query, $fetchMode)->fetchAll();
				} catch (PDOException $e) {
					exit($e->getMessage());
				}
			} else {
				try {
					$this->sth = $this->prepare($query);
					$this->sth->execute($params);
					$res = $this->sth->fetchAll($fetchMode);
				} catch (PDOException $e) {
					exit($e->getMessage());
				}
			}

			return $res;
		}

	}
	