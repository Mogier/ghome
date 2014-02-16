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
        $last_line = system('../../actionneur.py', $retval);
        return $this->render('GhomeContentBundle::accueil.html.twig');
    }

    public function addCapteurAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
        $space = $spaceRepository->findAll();
        $idPhysique = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn')->findAllIdPhysique();
        $capteurType = new CapteurType($space, $idPhysique);
        $capteur = new Capteur();
        $form = $this->createForm($capteurType, $capteur, array('action' => $this->generateUrl('ghome_content_addCapteur'), 'em' => $this->getDoctrine()->getManager()));

        if($request->isMethod('POST'))
        {
            //$form->setData(array('idEspace' => $spaceRepository->find($form->get('idEspace')->getData())));
            $form->handleRequest($request);
             die(var_dump($form->get('physicalId')->getData()));

            if ($form->isValid())
            {
                $
                $em = $this->getDoctrine()->getManager();
                $em->persist($capteur);
                $em->flush();

                $this->get('session')->getFlashBag()->add('notice','Le capteur a bien été ajouté');

                return $this->redirect($this->generateUrl('ghome_content_addCapteur'));
            }
        }

        return $this->render('GhomeContentBundle::addCapteur.html.twig', array('form' => $form->createView()));
    }

    public function contentAction($idString)
    {      
    	switch($idString) {

    		case "space":               
                return $this->redirect($this->generateUrl('ghome_content_listSpaces'));
            case "capteur":
                return $this->redirect($this->generateUrl('ghome_content_addCapteur'));
    	}
    }

    public function addSpaceAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $espace = new Espace();

        $form = $this->createForm(new EspaceType(), $espace);

        if($request->isMethod('POST')){

            $form->handleRequest($request);

            if ($form->isValid()) 
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($espace);
                $em->flush();

                return $this->redirect($this->generateUrl('ghome_content_homepage'));
            }
        }

        return $this->render('GhomeContentBundle::addSpace.html.twig', array('form' => $form->createView()));
    }

    public function listSpacesAction(Request $request) 
    {
        $spaces = $this->get('ghome_content')->GetAllSpaces();

        $espace = new Espace();

        $form = $this->createForm(new EspaceType(), $espace, array('action' => $this->generateUrl('ghome_content_addSpace')));

        return $this->render('GhomeContentBundle::listSpaces.html.twig', array('spaces' => $spaces, 'form' => $form->createView()));

    }
}
