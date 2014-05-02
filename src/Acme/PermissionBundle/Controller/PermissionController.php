<?php

namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Acme\PermissionBundle\Entity\Quyentthc;
use Acme\PermissionBundle\Entity\User;
use Acme\PermissionBundle\Entity\Linhvuc;
use Acme\PermissionBundle\Entity\Tthc;
use Acme\PermissionBundle\Form\UserType;
use Acme\PermissionBundle\Form\LinhvucType;
use Acme\PermissionBundle\Form\AddQuyenlinhvucType;
use Acme\PermissionBundle\Form\NewTTHCType;
use Acme\PermissionBundle\Form\QuyenTTHCType;
use Symfony\Component\HttpFoundation\Request;
use JMS\SecurityExtraBundle\Annotation\Secure;
use Doctrine\ORM\EntityRepository;
use Acme\PermissionBundle\Entity\Donvithuly;
class PermissionController extends Controller
{               
     /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function createUserAction(Request $request)
    {        
        $usr= $this->get('security.context')->getToken()->getUser();
        $user = new User();
        $form = $this->createForm(new UserType(),$user,array(
            'action'=>$this->generateUrl('createUser')
        ));
        $form->handleRequest($request);
        if ($form->isValid()){            
            $em = $this->getDoctrine()->getManager();
            $encoder = $this->container->get('security.encoder_factory')->getEncoder($user);
            $password12 = $encoder->encodePassword($form->get('password')->getData(),$user->getSalt());
            $user->setPassword($password12);    
            $user->setTenant($usr->getTenant());
            $username = $user->getUsername().'@'.$user->getTenant()->getDomain();
            $user->setUsername($username);
            $em->persist($user);
            $em->flush();            
            $this->get('session')->getFlashBag()->add('notice', 'Tạo mới người dùng thành công!');
            return $this->redirect($this->generateUrl('initialData'));
        }
        return $this->render('AcmePermissionBundle:Admin:createUser.html.twig',array('form'=>$form->createView()));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function createLinhvucAction(Request $request)
    {
        $usr= $this->get('security.context')->getToken()->getUser();
        $linhvuc = new Linhvuc();
        $form = $this->createForm(new LinhvucType(),$linhvuc,array(
            'action'=>$this->generateUrl('createLinhvuc')
        ));
        $form->handleRequest($request);
        if ($form->isValid()){        
            $em = $this->getDoctrine()->getManager();
            $linhvuc->setTenant($usr->getTenant());
            $em->persist($linhvuc);
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Tạo mới lĩnh vực thành công!');
            return $this->redirect($this->generateUrl('initialData'));
        }
        return $this->render('AcmePermissionBundle:Admin:createLinhvuc.html.twig',array('form'=>$form->createView()));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function createDVTLAction(Request $request)
    {
        $usr= $this->get('security.context')->getToken()->getUser();
        $donvitl = new Donvithuly();
        $form = $this->createFormBuilder($donvitl,array(
             'action'=>  $this->generateUrl('createDVTL')
        ))
                ->add('namedonvithuly','text',array(
                    'label'=>'Tên đơn vị thụ lý'
                ))->getForm()
                ->add('submit','submit');               
        $form->handleRequest($request);
        if ($form->isValid()){        
            $em = $this->getDoctrine()->getManager();
            $donvitl->setTenant($usr->getTenant());
            $em->persist($donvitl);
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Tạo mới lĩnh vực thành công!');
            return $this->redirect($this->generateUrl('initialData'));
        }
        return $this->render('AcmePermissionBundle:Admin:createDVTL.html.twig',array('form'=>$form->createView()));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function createTTHCAction(Request $request)
    {        
        $usr= $this->get('security.context')->getToken()->getUser();
        $tthc = new Tthc();
        $tthc->setIshide(FALSE);
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Quyenhan');        
        $quyenhan = $resposity->findAll();        
        foreach ($quyenhan as $quyen){     
            $quyentthc = new Quyentthc();
            $quyentthc->setQuyenhan($quyen);
            $tthc->addQuyentthc($quyentthc);
        }               
        $form = $this->createForm(new NewTTHCType($usr),$tthc,array(
            'action'=>  $this->generateUrl('createTTHC')
        ));
        $form->handleRequest($request);
        if ($form->isValid()){            
            $em = $this->getDoctrine()->getManager();            
            $em->persist($tthc);
            foreach ($tthc->getQuyentthc() as $quyentthc){
                $quyentthc->setTthc($tthc);
                $em->persist($quyentthc);
            }
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Tạo mới thủ tục hành chính thành công!');
            return $this->redirect($this->generateUrl('initialData'));
        }
        return $this->render('AcmePermissionBundle:Admin:createTTHC.html.twig',array('form'=>$form->createView()));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function permissionAction(Request $request)
    {
        $usr= $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Quyentthc');
        $vaitro = $resposity->createQueryBuilder("qt")
                ->JOIN("qt.user","u")
                   ->WHERE("u.tenant = :tenant")
                   ->setParameter("tenant",$usr->getTenant()->getId())->getQuery()->getResult();
           $form = $this->createFormBuilder()// tao checkbox xoa
                   ->add('quyenhan','entity',array(
                       'class'=>'AcmePermissionBundle:Quyentthc',
                        'query_builder' => function(EntityRepository $er) use ($usr) {
                        return $er->createQueryBuilder('qt')     
                                ->JOIN("qt.user","u")
                                   ->WHERE("u.tenant = :tenant")
                                ->setParameter("tenant",$usr->getTenant()->getId());
                    },
                       'property'=>'id',
                       'multiple'=>TRUE,
                       'expanded'=>TRUE
                   ))
                   ->add('submit','submit')
                   ->getForm();
           $form->handleRequest($request);        
           if ($form->isValid()){
               $em = $this->getDoctrine()->getManager();
               $func = $form->getData()['vaitro'];
               foreach ($func as $f){
                   $em->remove($f);
               }
               $em->flush();
               return $this->redirect($this->generateUrl('permission'));
        }
        return $this->render('AcmePermissionBundle:Admin:permission.html.twig',array('vaitroxuly'=>$vaitro,'form'=>$form->createView()));

    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function editPermissionAction($id,Request $request){
        $usr= $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Quyentthc');
        $vaitro = $resposity->find($id);
        $form = $this->createForm(new QuyenTTHCType($usr),$vaitro);
        $form->handleRequest($request);
        if ($form->isValid()){            
            $em = $this->getDoctrine()->getManager();
            $em->flush();
            return $this->redirect($this->generateUrl('permission'));
        }
        return $this->render('AcmePermissionBundle:Admin:editPermission.html.twig',array('form'=>$form->createView(),'quyentthc'=>$vaitro));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function addPermissionAction($id,Request $request){
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:User');
        $user = $resposity->findOneById($id);
        $quyenlinhvuc = new Quyenlinhvuc();
        $quyenlinhvuc->setUser($user);
        $form = $this->createForm(new AddQuyenlinhvucType(),$quyenlinhvuc);
        $form->handleRequest($request);
        if ($form->isValid()){
            $em = $this->getDoctrine()->getManager();
            $em->persist($quyenlinhvuc);
            $em->flush();
//            return $this->redirect($this->generateUrl('permission'));
        }
        return $this->render('AcmePermissionBundle:Admin:addPermission.html.twig',array('form'=>$form->createView(),'user'=>$user));
    }
    /**
    * @Secure(roles="ROLE_ADMIN")
    */
    public function statisticAction(){
        $usr= $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:User');
        $users = $resposity->createQueryBuilder('u')
                ->WHERE('u.tenant = :tenantid')
                ->setParameter('tenantid',$usr->getTenant()->getId())->getQuery()->getResult();
        return $this->render('AcmePermissionBundle:Admin:statistic.html.twig',array('users'=>$users));
    }          
}
