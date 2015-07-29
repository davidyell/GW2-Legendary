<div class="actions columns large-2 medium-3">
    <h3><?= __('Actions') ?></h3>
    <ul class="side-nav">
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $item->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $item->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Items'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Parent Items'), ['controller' => 'Items', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Parent Item'), ['controller' => 'Items', 'action' => 'add']) ?></li>
    </ul>
</div>
<div class="items form large-10 medium-9 columns">
    <?= $this->Form->create($item) ?>
    <fieldset>
        <legend><?= __('Edit Item') ?></legend>
        <?php
            echo $this->Form->input('name');
            echo $this->Form->input('quantity');
            echo $this->Form->input('parent_id', ['options' => $parentItems, 'empty' => true]);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>