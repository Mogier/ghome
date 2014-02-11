<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Relever
 *
 * @ORM\Table(name="Relever", indexes={@ORM\Index(name="I_FK_RELEVER_PROPRIETE", columns={"id_Propriete", "id_DateHeure", "id"}), @ORM\Index(name="FK_RELEVER_DATEHEURE", columns={"id_DateHeure"}), @ORM\Index(name="IDX_D7D8BF64716C6517", columns={"id_Propriete"})})
 * @ORM\Entity
 */
class Relever
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
     * @ORM\Column(name="valeur", type="string", length=20, nullable=true)
     */
    private $valeur;

    /**
     * @var \Dateheure
     *
     * @ORM\ManyToOne(targetEntity="Dateheure")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_DateHeure", referencedColumnName="id")
     * })
     */
    private $idDateheure;

    /**
     * @var \Propriete
     *
     * @ORM\ManyToOne(targetEntity="Propriete")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_Propriete", referencedColumnName="id")
     * })
     */
    private $idPropriete;



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
     * Set valeur
     *
     * @param string $valeur
     * @return Relever
     */
    public function setValeur($valeur)
    {
        $this->valeur = $valeur;

        return $this;
    }

    /**
     * Get valeur
     *
     * @return string 
     */
    public function getValeur()
    {
        return $this->valeur;
    }

    /**
     * Set idDateheure
     *
     * @param \Ghome\ContentBundle\Entity\Dateheure $idDateheure
     * @return Relever
     */
    public function setIdDateheure(\Ghome\ContentBundle\Entity\Dateheure $idDateheure = null)
    {
        $this->idDateheure = $idDateheure;

        return $this;
    }

    /**
     * Get idDateheure
     *
     * @return \Ghome\ContentBundle\Entity\Dateheure 
     */
    public function getIdDateheure()
    {
        return $this->idDateheure;
    }

    /**
     * Set idPropriete
     *
     * @param \Ghome\ContentBundle\Entity\Propriete $idPropriete
     * @return Relever
     */
    public function setIdPropriete(\Ghome\ContentBundle\Entity\Propriete $idPropriete = null)
    {
        $this->idPropriete = $idPropriete;

        return $this;
    }

    /**
     * Get idPropriete
     *
     * @return \Ghome\ContentBundle\Entity\Propriete 
     */
    public function getIdPropriete()
    {
        return $this->idPropriete;
    }
}
