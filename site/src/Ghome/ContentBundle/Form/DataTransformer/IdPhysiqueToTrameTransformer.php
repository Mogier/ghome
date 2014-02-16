<?php

// src/Acme/TaskBundle/Form/DataTransformer/IdPhysiqueToTrameTransformer.php
namespace Ghome\ContentBundle\Form\DataTransformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\TransformationFailedException;
use Doctrine\Common\Persistence\ObjectManager;
use Ghome\ContentBundle\Entity\Espace;

class IdPhysiqueToTrameTransformer implements DataTransformerInterface
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
     * Transforms a int (idPhysique) to an string (trame).
     *
     * @param  int $idPhysique
     *
     * @return trame|null
     *
     * @throws TransformationFailedException if string (trame) is not found.
     */
    public function reverseTransform($idPhysique)
    {
        if (!$idPhysique) {
            return null;
        }

        $trame = $this->om
            ->getRepository('GhomeContentBundle:TrameLearn')
            ->findOneTrameByIdPhysique($idPhysique)
        ;

        if (null === $Espace) {
            throw new TransformationFailedException(sprintf(
                'An Espace with idPhysique "%s" does not exist!',
                $idPhysique
            ));
        }

        return $Espace;
    }
}