<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Etatpossiblecapteur
 *
 * @ORM\Table(name="EtatPossibleCapteur", indexes={@ORM\Index(name="I_FK_ETATPOSSIBLECAPTEUR_ETAT", columns={"id_Etat"}), @ORM\Index(name="I_FK_ETATPOSSIBLECAPTEUR_ACTIONNEUR", columns={"id_Actionneur"})})
 * @ORM\Entity
 */
class Etatpossiblecapteur
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
     * @var \Actionneur
     *
     * @ORM\ManyToOne(targetEntity="Actionneur")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Actionneur", referencedColumnName="id")
     * })
     */
    private $idActionneur;

    /**
     * @var \Etat
     *
     * @ORM\ManyToOne(targetEntity="Etat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Etat", referencedColumnName="id")
     * })
     */
    private $idEtat;



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
     * Set idActionneur
     *
     * @param \Ghome\ContentBundle\Entity\Actionneur $idActionneur
     * @return Etatpossiblecapteur
     */
    public function setIdActionneur(\Ghome\ContentBundle\Entity\Actionneur $idActionneur = null)
    {
        $this->idActionneur = $idActionneur;

        return $this;
    }

    /**
     * Get idActionneur
     *
     * @return \Ghome\ContentBundle\Entity\Actionneur 
     */
    public function getIdActionneur()
    {
        return $this->idActionneur;
    }

    /**
     * Set idEtat
     *
     * @param \Ghome\ContentBundle\Entity\Etat $idEtat
     * @return Etatpossiblecapteur
     */
    public function setIdEtat(\Ghome\ContentBundle\Entity\Etat $idEtat = null)
    {
        $this->idEtat = $idEtat;

        return $this;
    }

    /**
     * Get idEtat
     *
     * @return \Ghome\ContentBundle\Entity\Etat 
     */
    public function getIdEtat()
    {
        return $this->idEtat;
    }
}
