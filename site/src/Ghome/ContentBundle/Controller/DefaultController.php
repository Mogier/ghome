<?php

namespace Ghome\ContentBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
//Entities
use Ghome\ContentBundle\Entity\Capteur;
use Ghome\ContentBundle\Entity\Actionneur;
use Ghome\ContentBundle\Entity\Espace;
use Ghome\ContentBundle\Entity\TypePropriete;
use Ghome\ContentBundle\Entity\Propriete;
//Forms
use Ghome\ContentBundle\Form\EspaceType;
use Ghome\ContentBundle\Form\CapteurType;
use Ghome\ContentBundle\Form\ActionneurType;

use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    public function homepageAction(Request $request)
    {

        $content = $request->get('content');

        if(strcmp($content, "capteur") == 0) {

            $em = $this->getDoctrine()->getManager();

            $capteurs = $em->getRepository('GhomeContentBundle:Capteur')->findAll();

            $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
            $space = $spaceRepository->findAll();

            $TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
            $idPhysique = $TrameLearnRepository->findAllIdPhysique();

            $capteurType = new CapteurType($space, $idPhysique);
            $capteur = new Capteur();
            $form = $this->createForm($capteurType, $capteur, array('action' => $this->generateUrl('ghome_content_addCapteur'), 'em' => $this->getDoctrine()->getManager()));

            return $this->render('GhomeContentBundle::accueil.html.twig', array('content' => $content, 'form' => $form->createView(), 'capteurs' => $capteurs));
        }
        else if (strcmp($content, "actionneur") == 0) {
            $em = $this->getDoctrine()->getManager();

            $actionneurRepository = $em->getRepository('GhomeContentBundle:Actionneur');
            $actionneurs = $actionneurRepository->findAll();

            $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
            $space = $spaceRepository->findAll();

            //$TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
            //$idPhysique = $TrameLearnRepository->findAllIdPhysique();

            $actionneurType = new ActionneurType($space);
            $actionneur = new Actionneur();
            $form = $this->createForm($actionneurType, $actionneur, array('action' => $this->generateUrl('ghome_content_addActionneur'), 'em' => $this->getDoctrine()->getManager()));

            return $this->render('GhomeContentBundle::accueil.html.twig', array('content' => $content, 'form' => $form->createView(), 'actionneurs' => $actionneurs));
        }
        else if (strcmp($content, "space") == 0) {

            $spaces = $this->get('ghome_content')->GetAllSpaces();

            $espace = new Espace();

            $form = $this->createForm(new EspaceType(), $espace, array('action' => $this->generateUrl('ghome_content_addSpace')));

            return $this->render('GhomeContentBundle::accueil.html.twig', array('content' => $content, 'spaces' => $spaces, 'form' => $form->createView()));
        }


        return $this->render('GhomeContentBundle::accueil.html.twig', array('content' => ""));
    }

    public function addCapteurAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $capteurs = $em->getRepository('GhomeContentBundle:Capteur')->findAll();

        $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
        $space = $spaceRepository->findAll();

        $TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
        $idPhysique = $TrameLearnRepository->findAllIdPhysique();

        $capteurType = new CapteurType($space, $idPhysique);
        $capteur = new Capteur();
        $form = $this->createForm($capteurType, $capteur, array('action' => $this->generateUrl('ghome_content_addCapteur'), 'em' => $this->getDoctrine()->getManager()));

        if($request->isMethod('POST'))
        {
            $form->handleRequest($request);

            if ($form->isValid())
            {
                $em = $this->getDoctrine()->getManager();

                $trameLearn = $form->get('tramelearn')->getData();
                $res = $TrameLearnRepository->findIdPhysiqueByTrame($trameLearn);
                $capteur->setIdPhysique($res[0]["idPhysiqueCapteur"]);
                $em->persist($capteur);

                switch($trameLearn) {

                    case "060001":  $propriete = new Propriete();
                                    $propriete->setIdCapteur($capteur);
                                    $propriete->setIdTypepropriete($em->getRepository('GhomeContentBundle:TypePropriete')->findOneByLabel('switch'));
                                    $em->persist($propriete);
                        break;
                    case "070801":  $propriete = new Propriete();
                                    $propriete->setIdCapteur($capteur);
                                    $propriete->setIdTypepropriete($em->getRepository('GhomeContentBundle:TypePropriete')->findOneByLabel('Lux'));
                                    $em->persist($propriete);
                                    $propriete2 = new Propriete();
                                    $propriete2->setIdCapteur($capteur);
                                    $propriete2->setIdTypepropriete($em->getRepository('GhomeContentBundle:TypePropriete')->findOneByLabel('Gens'));
                                    $em->persist($propriete2);
                        break;
                    case "070205":  $propriete = new Propriete();
                                    $propriete->setIdCapteur($capteur);
                                    $propriete->setIdTypepropriete($em->getRepository('GhomeContentBundle:TypePropriete')->findOneByLabel('Celsius'));
                                    $em->persist($propriete);
                        break;
                } 



                $TrameLearns = $TrameLearnRepository->findTrameLearnByIdPhysique($res[0]["idPhysiqueCapteur"]);
                foreach ($TrameLearns as $key => $trame) {
                    
                    $em->remove($trame);
                }
                
                $em->flush();

                $this->get('session')->getFlashBag()->add('notice','Le capteur a bien été ajouté');

                return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'capteur')));
            }
        }
                
        return $this->render('GhomeContentBundle::listCapteurs.html.twig', array('capteurs' => $capteurs, 'form' => $form->createView()));
    }

    public function addActionneurAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
        $space = $spaceRepository->findAll();

        //$TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
        //$idPhysique = $TrameLearnRepository->findAllIdPhysique();

        $actionneurType = new ActionneurType($space);
        $actionneur = new Actionneur();
        $actionneur->setEtat(1);
        $form = $this->createForm($actionneurType, $actionneur, array('action' => $this->generateUrl('ghome_content_addActionneur'), 'em' => $this->getDoctrine()->getManager()));

        if($request->isMethod('POST'))
        {
            $form->handleRequest($request);

            if ($form->isValid())
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($actionneur);
                $em->flush();

                $this->get('session')->getFlashBag()->add('notice',"L'actionneur a bien été ajouté");

                return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'actionneur')));
            }
        }
                
        return $this->render('GhomeContentBundle::listActionneurs.html.twig', array('form' => $form->createView()));
    }

    public function listCapteursAction() {

        $em = $this->getDoctrine()->getManager();

        $capteurs = $em->getRepository('GhomeContentBundle:Capteur')->findAll();

        $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
        $space = $spaceRepository->findAll();

        $TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
        $idPhysique = $TrameLearnRepository->findAllIdPhysique();

        $capteurType = new CapteurType($space, $idPhysique);
        $capteur = new Capteur();
        $form = $this->createForm($capteurType, $capteur, array('action' => $this->generateUrl('ghome_content_addCapteur'), 'em' => $this->getDoctrine()->getManager()));

        return $this->render('GhomeContentBundle::listCapteurs.html.twig', array('capteurs' => $capteurs, 'form' => $form->createView()));
    }

    public function listActionneursAction() {

        $em = $this->getDoctrine()->getManager();

        $actionneurRepository = $em->getRepository('GhomeContentBundle:Actionneur');
        $actionneurs = $actionneurRepository->findAll();

        $spaceRepository = $em->getRepository('GhomeContentBundle:Espace');
        $space = $spaceRepository->findAll();

        //$TrameLearnRepository = $this->getDoctrine()->getRepository('GhomeContentBundle:TrameLearn');
        //$idPhysique = $TrameLearnRepository->findAllIdPhysique();

        $actionneurType = new ActionneurType($space);
        $actionneur = new Actionneur();
        $form = $this->createForm($actionneurType, $actionneur, array('action' => $this->generateUrl('ghome_content_addActionneur'), 'em' => $this->getDoctrine()->getManager()));

        return $this->render('GhomeContentBundle::listActionneurs.html.twig', array('actionneurs' => $actionneurs, 'form' => $form->createView()));
    }

    public function actionneurStateAction(Request $request) {
        $idActionneur = $request->get('idActionneur');
        $currentState = $request->get('currentState');
        $newState = 1-$currentState;

        //die(var_dump(strval($newState)));

        $em = $this->getDoctrine()->getManager();

        $actionneurRepository = $em->getRepository('GhomeContentBundle:Actionneur');
        $actionneur = $actionneurRepository->findOneById($idActionneur);

        $last_line = system('python ../../ActionneurPrise.py '. strval($actionneur->getNumero()). strval($newState), $retval);

        $actionneur->setEtat(strval($newState));
        $em->flush();
        return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'actionneur')));
    }

    public function deleteActionneurAction(Request $request) {
        $idActionneur = $request->get('idActionneur');
        $em = $this->getDoctrine()->getManager();
        $actionneurRepository = $em->getRepository('GhomeContentBundle:Actionneur');
        $actionneur = $actionneurRepository->findOneById($idActionneur);

        $em->remove($actionneur);
        $em->flush();

        return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'actionneur')));


    }

    public function contentAction($idString)
    {      
    	switch($idString) {

    		case "space":               
                return $this->redirect($this->generateUrl('ghome_content_listSpaces'));
            case "capteur":
                return $this->redirect($this->generateUrl('ghome_content_addCapteur'));
            case "actionneur":
                return $this->redirect($this->generateUrl('ghome_content_listActionneurs'));
    	}
    }

    public function addSpaceAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $espace = new Espace();

        $form = $this->createForm(new EspaceType(), $espace, array('action' => $this->generateUrl('ghome_content_addSpace')));

        if($request->isMethod('POST')){

            $form->handleRequest($request);

            if ($form->isValid()) 
            {
                $em = $this->getDoctrine()->getManager();
                $em->persist($espace);
                $em->flush();

                $this->get('session')->getFlashBag()->add('notice','L\'espace a bien été ajouté');

                return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'space')));
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

    public function deleteSpaceAction($id) {

        $em = $this->getDoctrine()->getManager();
        try {

            $espace = $em->getRepository('GhomeContentBundle:Espace')->findOneById((int)$id);
            $em->remove($espace);
            $em->flush();
        }
        catch (\Doctrine\DBAL\DBALException $e) {

            $this->get('session')->getFlashBag()->add('warning','Un ou des capteurs sont attachés à cet espace. Supression impossible');

            return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'space')));
        }

        $this->get('session')->getFlashBag()->add('notice','L\'espace a bien été retiré');

        return $this->redirect($this->generateUrl('ghome_content_homepage', array('content' => 'space')));
    }


}
