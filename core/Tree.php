<?php

	/**
	 * Pārvērš masīvu kokā un apstrādā datus
	 *
	 * @author veetallic
	 */
	class Tree {

		private
			$tree,
			$parentField,
			$childrenField,
			$idField;

		public function __construct($data = NULL, $parentField = 'parent', $childrenField = 'children', $idField = 'id') {
			if (!$data || !is_array($data))
				return FALSE;

			$this->parentField = $parentField;
			$this->childrenField = $childrenField;
			$this->idField = $idField;

			$this->prepare($data);

			foreach ($data as $id => &$node) {
				if ($node[$parentField] == 0) {
					$this->tree[$id] = &$node;
				} else {
					$data[$node[$parentField]][$childrenField][$id] = &$node;
				}
			}
		}

		public function getTree() {
			return $this->tree;
		}

		public function displayTree($field, $rootEl = 'ul', $nodeEl = 'li') {
			return $this->dTree($field, NULL, $rootEl, $nodeEl);
		}

		private function prepare(&$data) {
			foreach ($data as $d)
				$res[(int) $d[$this->idField]] = $d;
			$data = $res;
		}

		private function dTree($field, $data = NULL, $rootEl, $nodeEl, $res = '', $level = 1) {
			$data = !$data ? $this->tree : $data;

			$res .= sprintf("<%s class='level%s'>", $rootEl, $level);
			foreach ($data as $d) {
				$res .= sprintf("<%s>%s", $nodeEl, $d[$field]);

				if (isset($d[$this->childrenField])) {
					$res = $this->dTree($field, $d[$this->childrenField], $rootEl, $nodeEl, $res, ++$level);
				}

				$res .= sprintf("</%s>", $nodeEl);
			}
			$res .= sprintf("</%s>", $rootEl);

			return $res;
		}

	}
	