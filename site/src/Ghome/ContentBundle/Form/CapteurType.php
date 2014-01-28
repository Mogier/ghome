<?php

// src/Acme/TaskBundle/Form/CapteurType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class CapteurType extends AbstractType {

	public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('task')
            ->add('dueDate', null, array('widget' => 'single_text'))
            ->add('save', 'submit');
    }

    public function getName()
    {
        return 'capteur';
    }
}