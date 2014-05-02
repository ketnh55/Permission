<?php

namespace Acme\PermissionBundle\DependencyInjection;
use Symfony\Component\Security\Http\Authentication\AuthenticationFailureHandlerInterface;
use Symfony\Bundle\FrameworkBundle\Routing\Router;
use Symfony\Component\Security\Core\SecurityContextInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
class LoginFailHandler implements AuthenticationFailureHandlerInterface 
{
    protected $router;
    protected $securityContext;
    public function __construct(SecurityContextInterface $securityContext,Router $router)
    {
        $this->securityContext = $securityContext;        
        $this->router = $router;
    }    
    public function onAuthenticationFailure(\Symfony\Component\HttpFoundation\Request $request, \Symfony\Component\Security\Core\Exception\AuthenticationException $exception) {
//        $domain = $this->securityContext->getToken()->getUser()->getTenant()->getDomain();
        $domain = explode("@",$request->get('_username'))[1];         
        $uri = $this->router->generate('login', array('domain' => $domain));
        
        $response = new RedirectResponse($uri);        
        return $response;
    }

//     }
}
