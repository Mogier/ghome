<?php

// src/Acme/TaskBundle/Form/DataTransformer/EspaceToNumberTransformer.php
namespace Ghome\ContentBundle\Form\DataTransformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\TransformationFailedException;
use Doctrine\Common\Persistence\ObjectManager;
use Ghome\ContentBundle\Entity\Espace;

class EspaceToNumberTransformer implements DataTransformerInterface
{
    /**
     * @var ObjectManager
     */
    private $om;

    /**
     * @param ObjectManager $om
     */
    public function __construct(ObjectManager $om)
    {
        $this->om = $om;
    }

    /**
     * Transforms an object (Espace) to a string (number).
     *
     * @param  Espace|null $Espace
     * @return string
     */
    public function transform($Espace)
    {
        if (null === $Espace) {
            return "";
        }

        return $Espace->getId();
    }

    /**
     * Transforms a int (id) to an object (Espace).
     *
     * @param  int $id
     *
     * @return Espace|null
     *
     * @throws TransformationFailedException if object (Espace) is not found.
     */
    public function reverseTransform($id)
    {
        if (!$id) {
            return null;
        }

        $Espace = $this->om
            ->getRepository('GhomeContentBundle:Espace')
            ->findOneBy(array('id' => $id))
        ;

        if (null === $Espace) {
            throw new TransformationFailedException(sprintf(
                'An Espace with id "%s" does not exist!',
                $id
            ));
        }

        return $Espace;
    }
}