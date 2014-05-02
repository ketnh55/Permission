<?php
namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Acme\PermissionBundle\Entity\Congdan;
use Acme\PermissionBundle\Form\CongdanType;

class CitizenController extends Controller{
    public function createCitizenAction(Request $request){
        $user= $this->get('security.context')->getToken()->getUser();
        $congdan = new Congdan();
        $congdan->setTenant($user->getTenant());
        $form = $this->createForm(new CongdanType(),$congdan);
        $form->handleRequest($request);
        if($form->isValid()){
             $em = $this->getDoctrine()->getManager();
             $em->persist($congdan);
             $em->flush();
             return $this->render('AcmePermissionBundle:Citizen:createCitizenSuccess.html.twig',array('congdan'=>$congdan)); 
        }
        return $this->render('AcmePermissionBundle:Citizen:createCitizen.html.twig',array('form'=>$form->createView()));
    }
    public function testAction(){
        return $this->render('AcmePermissionBundle:Citizen:test.html.twig');
    }
}
