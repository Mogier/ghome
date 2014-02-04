<?php

namespace Ghome\ContentBundle\Service;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class ServiceMembre {

	private $em;

	function __construct(\Doctrine\ORM\EntityManager $em) {
		
		 $this->em = $em;
	}

	public function GetAllSpaces() {
		$repository = $this->em->getRepository('GhomeContentBundle:Espace');
		$spaces = $repository->findAll();
		return $spaces;
	}

	
	/*public function GetAllEtudiant() {
	
		$repository = $this->em->getRepository('CvaGestionMembreBundle:Etudiant');
		$etudiants = $repository->findAll();
		return $etudiants;
	}*/
	
}
