<?php

// src/Acme/TaskBundle/Form/CapteurType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class CapteurType extends AbstractType {

    private $space;

    public __construct($space) {

        $this->space = $space
    }

	public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $formSpace = array();
        foreach($this->space as $space)
        {
                $formSpace[$space->getId()] = $space->getNom();
        }
        $builder
            ->add('nom', "text")
            ->add('description', "textarea")
            ->add('Espace', 'choice', array('choices' => $formSpace, 'required'  => true, 'expanded' => true,'mapped' => false, 'multiple' => true ));
            ->add('save', 'submit');
    }

    public function getName()
    {
        return 'capteur';
    }
}