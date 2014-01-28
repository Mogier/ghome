<?php

// src/Acme/TaskBundle/Form/EspaceType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class EspaceType extends AbstractType {

	public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('nom', 'text')
            ->add('description', 'textarea');
    }

    public function getName()
    {
        return 'espace';
    }
}