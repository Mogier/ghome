<?php

namespace Ghome\ContentBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Espace
 *
 * @ORM\Table(name="Espace", indexes={@ORM\Index(name="I_FK_ESPACE_TYPEESPACE", columns={"id_TypeSpace"})})
 * @ORM\Entity
 */
class Espace
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
     * @ORM\Column(name="nom", type="string", length=32, nullable=true)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=255, nullable=true)
     */
    private $description;

    /**
     * @var \Typespace
     *
     * @ORM\ManyToOne(targetEntity="Typespace")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_TypeSpace", referencedColumnName="id")
     * })
     */
    private $idTypespace;



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
     * Set nom
     *
     * @param string $nom
     * @return Espace
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string 
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set description
     *
     * @param string $description
     * @return Espace
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set idTypespace
     *
     * @param \Ghome\ContentBundle\Entity\Typespace $idTypespace
     * @return Espace
     */
    public function setIdTypespace(\Ghome\ContentBundle\Entity\Typespace $idTypespace = null)
    {
        $this->idTypespace = $idTypespace;

        return $this;
    }

    /**
     * Get idTypespace
     *
     * @return \Ghome\ContentBundle\Entity\Typespace 
     */
    public function getIdTypespace()
    {
        return $this->idTypespace;
    }
}
