<?php

namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class SuperAdminController extends Controller {

    public function manageTenantAction(Request $request) {
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tenant');
        $tenant = $resposity->findAll();
        $form = $this->createFormBuilder()
                ->add('tenant','entity',array(
                    'class'=>'AcmePermissionBundle:Tenant',
                    'property'=>'id',
                    'multiple'=>TRUE,
                    'expanded'=>TRUE
                ))
                ->add('submit','submit',array(
                    'label'=>'Xóa'
                ))
                ->getForm();
        $form->handleRequest($request);
        if($form->isValid()){
            $em = $this->getDoctrine()->getManager();
            $func = $form->getData()['tenant'];
            foreach ($func as $f) {
                $em->remove($f);
            }
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Xóa người dùng thành công!');
            return $this->redirect($this->generateUrl('manageTenant'));
        }
        return $this->render('AcmePermissionBundle:SuperAdmin:TenantManager.html.twig', array('tenant' => $tenant,'form'=>$form->createView()));
    }

}
