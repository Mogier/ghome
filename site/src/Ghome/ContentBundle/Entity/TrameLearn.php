<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TrameLearn
 *
 * @ORM\Entity(repositoryClass="Ghome\ContentBundle\Entity\Repository\TrameLearnRepository")
 */
class TrameLearn
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="trame", type="string", length=10, nullable=false)
     */
    private $trame;

    /**
     * @var integer
     *
     * @ORM\Column(name="idPhysiqueCapteur", type="string", length=20, nullable=false)
     */
    private $idPhysiqueCapteur;


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
     * Set trame
     *
     * @param string $trame
     * @return TrameLearn
     */
    public function setTrame($trame)
    {
        $this->trame = $trame;

        return $this;
    }

    /**
     * Get trame
     *
     * @return string 
     */
    public function getTrame()
    {
        return $this->trame;
    }

    /**
     * Set idPhysiqueCapteur
     *
     * @param integer $idPhysiqueCapteur
     * @return TrameLearn
     */
    public function setIdPhysiqueCapteur($idPhysiqueCapteur)
    {
        $this->idPhysiqueCapteur = $idPhysiqueCapteur;

        return $this;
    }

    /**
     * Get idPhysiqueCapteur
     *
     * @return integer 
     */
    public function getIdPhysiqueCapteur()
    {
        return $this->idPhysiqueCapteur;
    }
}
