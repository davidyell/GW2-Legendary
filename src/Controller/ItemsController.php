<?php

/**
 * @category GW2-Legendary
 * @package ItemsController.php
 *
 * @author David Yell <neon1024@gmail.com>
 * @when 29/07/15
 *
 */

namespace App\Controller;

use Cake\Network\Exception\NotFoundException;

class ItemsController extends AppController
{
    /**
     * List all the legendaries on the site, so a user can pick the one they want
     *
     * @return void
     */
    public function index()
    {
        $legendaries = $this->Items->Legendaries->find();
        $this->set('legendaries', $legendaries);
        $this->set('title', 'Track your Guild Wars 2 Legendary progress');
    }

    /**
     * View a single legendary by it's slug. Will load the dependant tree data for that item.
     *
     * @param string $slug The lowercase hypenated slug
     * @return void
     */
    public function view($slug)
    {
        $legendary = $this->Items->Legendaries->find()
            ->contain([
                'Items' => function ($q) {
                    return $q->where(['parent_id IS' => null]);
                }
            ])
            ->where(["REPLACE(LOWER(`name`), ' ', '-') =" => $slug])
            ->first();

        if (!$legendary) {
            throw new NotFoundException('Item not found.');
        }

        $this->Items->behaviors()->Tree->config('scope', ['legendary_id' => $legendary->id]);

        $children = $this->Items->find('children', ['for' => $legendary->items[0]->id])
            ->find('threaded')
            ->contain(['Ingredients']);

        $totalItems = $this->Items->find();
        $totalItems->select(['sum' => $totalItems->func()->sum('quantity')])
            ->where(['legendary_id' => $legendary->id]);

        $this->set(compact('legendary', 'children', 'totalItems'));
        $this->set('title', 'Track your GW2 ' . $legendary->name . ' progress');
    }
}