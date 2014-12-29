<?php

	/**
	 * Pārvērš masīvu kokā un apstrādā datus
	 *
	 * @author veetallic
	 */
	class Tree {

		private $tree;

		public function __construct($data = NULL, $parentField = 'parent', $childrenField = 'children', $idField = 'id') {
			if (!$data || !is_array($data))
				return FALSE;

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

		private function prepare(&$data, $idField = 'id') {
			foreach ($data as $d)
				$res[(int) $d[$idField]] = $d;
			$data = $res;
		}

	}
	