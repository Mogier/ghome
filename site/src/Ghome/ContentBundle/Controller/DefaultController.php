<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
//Entities
use Ghome\ContentBundle\Entity\Capteur;
use Ghome\ContentBundle\Entity\Espace;
//Forms
use Ghome\ContentBundle\Form\EspaceType;
use Ghome\ContentBundle\Form\CapteurType;

use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function homepageAction()
    {
        return $this->render('GhomeContentBundle::accueil.html.twig');
    }

    public function addCapteurAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $space = $em->getRepository('GhomeContentBundle:Espace')->findAll();
        $capteurType = new CapteurType($space);
        $capteur = new Capteur();
        $form = $this->createForm($capteurType, $capteur);

        if($request->isMethod('POST'))
        {
            $form->handleRequest($request);

            if ($form->isValid()) 
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($task);
                $em->flush();

                return $this->redirect($this->generateUrl('ghome_content_addCapteur'));
            }
        }

        return $this->render('GhomeContentBundle::addCapteur.html.twig', array('form' => $form->createView()));
    }

    public function contentAction($idString)
    {      
    	switch($idString) {

    		case "space":               
                return $this->redirect($this->generateUrl('ghome_content_addSpace'));
    	}
    }

    public function addSpaceAction(Request $request)
    {
        //die(var_dump("expression"));
        $em = $this->getDoctrine()->getManager();
        $espace = new Espace();

        $form = $this->createForm(new EspaceType(), $espace);

        if($request->isMethod('POST')){
            //TODO Persist in base   
        }

        return $this->render('GhomeContentBundle::addSpace.html.twig', array('form' => $form->createView(),));

    }
}
