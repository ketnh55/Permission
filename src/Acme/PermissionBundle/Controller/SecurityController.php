<?php

namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Security\Core\SecurityContext;

class SecurityController extends Controller {

    public function loginAction($domain, $user = null) {
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tenant');
        $tenant = $resposity->findOneBy(array('domain' => $domain));
        if (count($tenant) == 0) {
            throw $this->createNotFoundException('Your domain does not exist.');
        }
        $request = $this->getRequest();
        $session = $request->getSession();
        $error = 'Sai tên đăng nhập hoặc mật khẩu';
        if ($request->attributes->has(SecurityContext::AUTHENTICATION_ERROR)) {
            $error =//                    'Sai tên đăng nhập hoặc mật khẩu' 
                    $request->attributes->get(
                    SecurityContext::AUTHENTICATION_ERROR
            );
        } else {
            $error = $session->get(SecurityContext::AUTHENTICATION_ERROR);
            $session->remove(SecurityContext::AUTHENTICATION_ERROR);
        }
        return $this->render(
                        'AcmePermissionBundle:Security:login.html.twig', array(
                    'last_username' => $session->get(SecurityContext::LAST_USERNAME),
                    'error' => $error,
                    'domain' => $domain,
                    'tenant' => $tenant
                        )
        );
    }

}
