<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Dateheure
 *
 * @ORM\Table(name="DateHeure")
 * @ORM\Entity
 */
class Dateheure
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateReleve", type="datetime", nullable=false)
     */
    private $datereleve;



    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set datereleve
     *
     * @param \DateTime $datereleve
     * @return Dateheure
     */
    public function setDatereleve($datereleve)
    {
        $this->datereleve = $datereleve;

        return $this;
    }

    /**
     * Get datereleve
     *
     * @return \DateTime 
     */
    public function getDatereleve()
    {
        return $this->datereleve;
    }
}
