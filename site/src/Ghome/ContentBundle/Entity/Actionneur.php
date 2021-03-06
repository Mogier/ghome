<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Actionneur
 *
 * @ORM\Table(name="Actionneur", indexes={@ORM\Index(name="I_FK_COMPOSANT_ESPACE_2", columns={"id_Espace"})})
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
     * @var integer
     *
     * @ORM\Column(name="numero", type="integer", nullable=false)
     */
    private $numero;


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
     * @ORM\Column(name="etat", type="boolean")
     */
    private $etat;



    /**
     * Set etat
     *
     * @param integer $etat
     * @return Actionneur
     */
    public function setEtat($etat)
    {
        $this->etat = $etat;

        return $this;
    }

    /**
     * Get etat
     *
     * @return integer 
     */
    public function getEtat()
    {
        return $this->etat;
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

    /**
     * Set numero
     *
     * @param integer $numero
     * @return Actionneur
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Get numero
     *
     * @return integer 
     */
    public function getNumero()
    {
        return $this->numero;
    }
}
