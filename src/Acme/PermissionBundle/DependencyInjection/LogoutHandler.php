<?php
namespace Acme\PermissionBundle\DependencyInjection;
use Symfony\Component\Security\Http\Logout\LogoutSuccessHandlerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Bundle\FrameworkBundle\Routing\Router;
use Symfony\Component\Security\Core\SecurityContextInterface;
use Acme\PermissionBundle\Controller\SecurityController;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LogoutHandler
 *
 * @author Admin
 */
class LogoutHandler extends Controller implements LogoutSuccessHandlerInterface {
    protected $router;
    protected $securityContext;
    public function __construct(SecurityContextInterface $securityContext,Router $router)
    {
        $this->securityContext = $securityContext;        
        $this->router = $router;
    }
    public function onLogoutSuccess(Request $request)
    {        
        $user = $this->securityContext->getToken()->getUser();
        $tenant = $user->getTenant();
        $domain = $tenant->getDomain();
        $uri = $this->router->generate('login', array('domain' => $domain));
        $response = new RedirectResponse($uri);        
        return $response;
    }
    public function loginAdvanced(){
        return $this->render( 'AcmePermissionBundle:Default:blank1.html.twig');
    }
}
