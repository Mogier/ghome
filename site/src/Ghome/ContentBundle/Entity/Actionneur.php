<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Actionneur
 *
 * @ORM\Table(name="Actionneur", indexes={@ORM\Index(name="I_FK_ACTIONNEUR_ETAT", columns={"id_Etat"}), @ORM\Index(name="I_FK_COMPOSANT_ESPACE_2", columns={"id_Espace"})})
 * @ORM\Entity
 */
class Actionneur
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
     * @var \Etat
     *
     * @ORM\OneToOne(targetEntity="Etat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Etat", referencedColumnName="id")
     * })
     */
    private $idEtat;



    /**
     * Set idEtat
     *
     * @param integer $idEtat
     * @return Actionneur
     */
    public function setIdEtat($idEtat)
    {
        $this->idEtat = $idEtat;

        return $this;
    }

    /**
     * Get idEtat
     *
     * @return integer 
     */
    public function getIdEtat()
    {
        return $this->idEtat;
    }

    /**
     * Set tramelearn
     *
     * @param string $tramelearn
     * @return Actionneur
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
     * @return Actionneur
     */
    public function setIdEspace(\Ghome\ContentBundle\Entity\Espace $idEspace = null)
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

    /**
     * Set id
     *
     * @param \Ghome\ContentBundle\Entity\Etat $id
     * @return Actionneur
     */
    public function setId(\Ghome\ContentBundle\Entity\Etat $id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get id
     *
     * @return \Ghome\ContentBundle\Entity\Etat 
     */
    public function getId()
    {
        return $this->id;
    }
}
