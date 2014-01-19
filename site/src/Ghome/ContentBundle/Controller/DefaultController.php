<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ghome\ContentBundle\Entity\Capteur;

class DefaultController extends Controller
{
    public function testAction()
    {
	$capteur = new Capteur();
	$capteur->setIdCapteur(123);
	$em = $this->getDoctrine()->getManager();
	$em->persist($capteur);
	$em->flush();
        return $this->render('GhomeContentBundle:Default:index.html.twig');
    }
}
