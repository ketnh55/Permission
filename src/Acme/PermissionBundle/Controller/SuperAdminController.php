<?php

namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Acme\PermissionBundle\Entity\Congdan;
use Acme\PermissionBundle\Form\CongdanType;

class SuperAdminController extends Controller {

    public function manageTenantAction(Request $request) {
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tenant');
        $tenant = $resposity->findAll();
        return $this->render('AcmePermissionBundle:SuperAdmin:TenantManager.html.twig', array('tenant' => $tenant));
    }

}
