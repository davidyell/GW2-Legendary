<?php
namespace App\Model\Table;

use App\Model\Entity\Item;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Items Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Legendaries
 * @property \Cake\ORM\Association\BelongsTo $Ingredients
 * @property \Cake\ORM\Association\BelongsTo $ParentItems
 * @property \Cake\ORM\Association\HasMany $ChildItems
 */
class ItemsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('items');
        $this->displayField('name');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');
        $this->addBehavior('Tree');

        $this->belongsTo('Legendaries', [
            'foreignKey' => 'legendary_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Ingredients', [
            'foreignKey' => 'ingredient_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('ParentItems', [
            'className' => 'Items',
            'foreignKey' => 'parent_id'
        ]);
        $this->hasMany('ChildItems', [
            'className' => 'Items',
            'foreignKey' => 'parent_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');

        $validator
            ->add('quantity', 'valid', ['rule' => 'numeric'])
            ->requirePresence('quantity', 'create')
            ->notEmpty('quantity');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['legendary_id'], 'Legendaries'));
        $rules->add($rules->existsIn(['ingredient_id'], 'Ingredients'));
        $rules->add($rules->existsIn(['parent_id'], 'ParentItems'));
        return $rules;
    }
}
