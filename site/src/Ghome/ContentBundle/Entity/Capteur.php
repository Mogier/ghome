<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Capteur
 *
 * @ORM\Table(name="Capteur", indexes={@ORM\Index(name="I_FK_COMPOSANT_ESPACE_3", columns={"id_Espace"})})
 * @ORM\Entity
 */
class Capteur
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
     * @var string
     *
     * @ORM\Column(name="trameLearn", type="string", length=32, nullable=true)
     */
    private $tramelearn;

    /**
     * @var \Espace
     *
     * @ORM\ManyToOne(targetEntity="Espace")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Espace", referencedColumnName="id")
     * })
     */
    private $idEspace;



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
     * Set tramelearn
     *
     * @param string $tramelearn
     * @return Capteur
     */
    public function setTramelearn($tramelearn)
    {
        $this->tramelearn = $tramelearn;

        return $this;
    }

    /**
     * Get tramelearn
     *
     * @return string 
     */
    public function getTramelearn()
    {
        return $this->tramelearn;
    }

    /**
     * Set idEspace
     *
     * @param \Ghome\ContentBundle\Entity\Espace $idEspace
     * @return Capteur
     */
    public function setIdEspace(\Ghome\ContentBundle\Entity\Espace $idEspace)
    {
        $this->idEspace = $idEspace;

        return $this;
    }

    /**
     * Get idEspace
     *
     * @return \Ghome\ContentBundle\Entity\Espace 
     */
    public function getIdEspace()
    {
        return $this->idEspace;
    }
}
