<?php

/**
 * @category GW2-Legendary
 * @package HierarchyHelper.php
 *
 * @author David Yell <neon1024@gmail.com>
 * @when 29/07/15
 *
 */

namespace App\View\Helper;

use Cake\View\Helper;

class HierarchyHelper extends Helper
{

    public function tree($thread, &$out = null)
    {
        if (!empty($thread) && is_array($thread)) {
            foreach ($thread as $item) {
                $out .= "<ul>";
                $out .= "<li><a href='#'>" . $item->name . ', ' . $item->quantity . "</a>";
                if (!empty($item->children)) {
                    $this->tree($item->children, $out);
                }
                $out .= "</li>";
                $out .= "</ul>";
            }
        }

        return $out;
    }
}