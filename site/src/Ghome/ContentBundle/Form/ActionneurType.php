<?php

// src/Acme/TaskBundle/Form/ActionneurType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Ghome\ContentBundle\Form\DataTransformer\EspaceToNumberTransformer;
use Ghome\ContentBundle\Form\DataTransformer\IdPhysiqueToTrameTransformer;

class ActionneurType extends AbstractType {

    private $space;

    function __construct(array $space) {

        $this->space = $space;
    }

	public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $entityManager = $options['em'];
        $spaceTransformer = new EspaceToNumberTransformer($entityManager);        
        $trameTransformer = new IdPhysiqueToTrameTransformer($entityManager);

        $formSpace = array();
        foreach($this->space as $space)
        {
                $formSpace[$space->getId()] = $space->getNom();
        }

        $builder
            ->add($builder->create('idEspace', 'choice', array('choices' => $formSpace, 'required'  => true, 'expanded' => true,'mapped' => true, 'multiple' => false ))
                    ->addModelTransformer($spaceTransformer)
            )
            ->add('save', 'submit');
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver
            ->setDefaults(array(
            'data_class' => 'Ghome\ContentBundle\Entity\Actionneur',
        ))
            ->setRequired(array(
            'em',
        ))
        ->setAllowedTypes(array(
               'em' => 'Doctrine\Common\Persistence\ObjectManager',
        ));
    }

    public function getName()
    {
        return 'actionneur';
    }
}