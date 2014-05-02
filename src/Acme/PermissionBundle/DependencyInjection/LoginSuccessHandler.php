<?php
namespace Acme\PermissionBundle\DependencyInjection;
use Symfony\Component\Security\Http\Authentication\AuthenticationSuccessHandlerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Bundle\FrameworkBundle\Routing\Router;
use Symfony\Component\Security\Core\SecurityContextInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class LoginSuccessHandler extends Controller implements AuthenticationSuccessHandlerInterface {
    protected $router;
    protected $securityContext;
    public function __construct(SecurityContextInterface $securityContext,Router $router)
    {
        $this->securityContext = $securityContext;        
        $this->router = $router;
    }

    public function onAuthenticationSuccess(Request $request, \Symfony\Component\Security\Core\Authentication\Token\TokenInterface $token) {        
        $user = $token->getUser();
        $tenant = $user->getTenant();
        $domain = $tenant->getDomain();
        $uri = $this->router->generate('admin', array('domain' => $domain));        
        $response = new RedirectResponse($uri);        
        return $response;
    }

}
