<?php

//src/Acme/StoreBundle/Entity/ProductRepository.php
namespace Ghome\ContentBundle\Entity\Repository;

use Doctrine\ORM\EntityRepository;

class TrameLearnRepository extends EntityRepository
{
    public function findAllIdPhysique()
    {        
        return $this->getEntityManager()
            ->createQuery(
                'SELECT tl.idPhysiqueCapteur FROM GhomeContentBundle:TrameLearn tl'
            )
            ->getResult();
    }

    public function findIdPhysiqueByTrame($trame) {

        return $this->getEntityManager()
            ->createQuery(
                'SELECT tl.idPhysiqueCapteur FROM GhomeContentBundle:TrameLearn tl WHERE tl.trame = :trame'
            )
            ->setParameter('trame', $trame)
            ->getResult();
    }

    public function findOneTrameByIdPhysique($idPhysique)
    {
    	return $this->getEntityManager()
            ->createQuery(
                'SELECT tl.trame FROM GhomeContentBundle:TrameLearn tl WHERE tl.idPhysiqueCapteur = :id'
            )
            ->setParameter('id', $idPhysique)
            ->getResult();
    }

    public function findTrameLearnByIdPhysique($idPhysique) {

        return $this->getEntityManager()
            ->createQuery(
                'SELECT tl FROM GhomeContentBundle:TrameLearn tl WHERE tl.idPhysiqueCapteur = :id'
            )
            ->setParameter('id', $idPhysique)
            ->getResult();
    }
}