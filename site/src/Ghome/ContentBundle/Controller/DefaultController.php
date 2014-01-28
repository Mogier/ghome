<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ghome\ContentBundle\Entity\Capteur;

class DefaultController extends Controller
{
    public function homepageAction()
    {
        return $this->render('GhomeContentBundle::accueil.html.twig');
    }

    public function contentAction($idString)
    {

    	switch($idString) {

    		case: "editSpace"

    				return $this->render('GhomeContentBundle::editSpace.html.twig');
    			break;
    	}
    }
}
