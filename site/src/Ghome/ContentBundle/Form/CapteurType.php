<?php

// src/Acme/TaskBundle/Form/CapteurType.php
namespace Ghome\ContentBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Ghome\ContentBundle\Form\DataTransformer\EspaceToNumberTransformer;

class CapteurType extends AbstractType {

    private $space;
    private $physicalIds;

    function __construct(array $space, array $physicalIds) {

        $this->space = $space;
        $this->physicalIds = $physicalIds;
    }

	public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $entityManager = $options['em'];
        $transformer = new EspaceToNumberTransformer($entityManager);

        $formSpace = array();
        foreach($this->space as $space)
        {
                $formSpace[$space->getId()] = $space->getNom();
        }

        $formId = array();
        foreach($this->physicalIds as $id)
        {
                $formId[$id['idPhysiqueCapteur']] = $id['idPhysiqueCapteur'];
        }

        $builder
            ->add($builder->create('idEspace', 'choice', array('choices' => $formSpace, 'required'  => true, 'expanded' => true,'mapped' => true, 'multiple' => false ))
                    ->addModelTransformer($transformer)
            )
            ->add('physicalId', 'choice', array('choices' => $formId, 'required'  => true, 'expanded' => true,'mapped' => false, 'multiple' => false ))
            ->add('save', 'submit');
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver
            ->setDefaults(array(
            'data_class' => 'Ghome\ContentBundle\Entity\Capteur',
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
        return 'capteur';
    }
}