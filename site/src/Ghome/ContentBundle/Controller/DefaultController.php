<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ghome\ContentBundle\Entity\Capteur;

class DefaultController extends Controller
{
    public function testAction()
    {
        return $this->render('GhomeContentBundle::accueil.html.twig');
    }
}
