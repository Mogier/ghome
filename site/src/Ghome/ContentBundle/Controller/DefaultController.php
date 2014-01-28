<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Ghome\ContentBundle\Entity\Capteur;
use Ghome\ContentBundle\Entity\Espace;
use Ghome\ContentBundle\Form\EspaceType;

class DefaultController extends Controller
{
    public function homepageAction()
    {
        return $this->render('GhomeContentBundle::accueil.html.twig');
    }

    public function addSpaceAction(Request $request)
    {
        $space = new Espace();
        $form = $this->createForm(new EspaceType(), $space);

        if($request->isMethod('POST'))
        {
            $form->handleRequest($request);

            if ($form->isValid()) 
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($task);
                $em->flush();

                return $this->redirect($this->generateUrl('task_success'));
            }
        }

        return $this->render('GhomeContentBundle::addSpace.html.twig');
    }

    public function contentAction($idString)
    {

    	switch($idString) {

    		case "editSpace":

    				return $this->render('GhomeContentBundle::editSpace.html.twig');
    			break;
    	}
    }
}
