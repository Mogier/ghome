<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Propriete
 *
 * @ORM\Table(name="Propriete", indexes={@ORM\Index(name="I_FK_PROPRIETE_CAPTEUR", columns={"id_Capteur"}), @ORM\Index(name="I_FK_PROPRIETE_TYPEPROPRIETE", columns={"id_TypePropriete"})})
 * @ORM\Entity
 */
class Propriete
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
     * @var \Typepropriete
     *
     * @ORM\ManyToOne(targetEntity="Typepropriete")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_TypePropriete", referencedColumnName="id")
     * })
     */
    private $idTypepropriete;

    /**
     * @var \Capteur
     *
     * @ORM\ManyToOne(targetEntity="Capteur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Capteur", referencedColumnName="id")
     * })
     */
    private $idCapteur;



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
     * Set idTypepropriete
     *
     * @param \Ghome\ContentBundle\Entity\Typepropriete $idTypepropriete
     * @return Propriete
     */
    public function setIdTypepropriete(\Ghome\ContentBundle\Entity\Typepropriete $idTypepropriete = null)
    {
        $this->idTypepropriete = $idTypepropriete;

        return $this;
    }

    /**
     * Get idTypepropriete
     *
     * @return \Ghome\ContentBundle\Entity\Typepropriete 
     */
    public function getIdTypepropriete()
    {
        return $this->idTypepropriete;
    }

    /**
     * Set idCapteur
     *
     * @param \Ghome\ContentBundle\Entity\Capteur $idCapteur
     * @return Propriete
     */
    public function setIdCapteur(\Ghome\ContentBundle\Entity\Capteur $idCapteur = null)
    {
        $this->idCapteur = $idCapteur;

        return $this;
    }

    /**
     * Get idCapteur
     *
     * @return \Ghome\ContentBundle\Entity\Capteur 
     */
    public function getIdCapteur()
    {
        return $this->idCapteur;
    }
}
