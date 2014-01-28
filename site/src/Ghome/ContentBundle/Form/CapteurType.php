<?php

// src/Acme/TaskBundle/Form/CapteurType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class CapteurType extends AbstractType {

    private $space;

    function __construct(array $space) {

        $this->space = $space;
    }

	public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $formSpace = array();
        foreach($this->space as $space)
        {
                $formSpace[$space->getId()] = $space->getNom();
        }
        $builder
            ->add('tramelearn', "text")
            ->add('espace', 'choice', array('choices' => $formSpace, 'required'  => true, 'expanded' => true,'mapped' => false, 'multiple' => true ))
            ->add('save', 'submit');
    }

    public function getName()
    {
        return 'capteur';
    }
}