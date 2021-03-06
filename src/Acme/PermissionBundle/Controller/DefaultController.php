<?php

namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Doctrine\ORM\EntityRepository;
use Symfony\Component\HttpFoundation\Request;
use Acme\PermissionBundle\Form\UserPassType;
use Acme\PermissionBundle\Form\TenantRegisterType;
use Acme\PermissionBundle\Entity\User;
use Acme\PermissionBundle\Form\ChuyenvienthulyType;
use Acme\PermissionBundle\Entity\Chuyenvienthuly;

class DefaultController extends Controller {

    public function intinialDataAction() {
        return $this->render('AcmePermissionBundle:Admin:initialData.html.twig');
    }

    public function menuCreateAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $roles = $usr->getRole();
        return $this->render('AcmePermissionBundle:Default:menu.html.twig', array('roles' => $roles));
    }

    public function createUserProfileAction(Request $request) {
        $em = $this->getDoctrine()->getManager();
        $usr = $this->get('security.context')->getToken()->getUser();
        $password12 = $usr->getPassword();
        $form = $this->createForm(new UserPassType(), $usr);
        $form->handleRequest($request);
        if ($form->isSubmitted()) {
            if ($form->isValid()) {
                $thongtincanhan = $usr->getThontincanhan();
                $thongtincanhan->upload();
                $encoder = $this->container->get('security.encoder_factory')->getEncoder($usr);
                if ($form->get('password')->getData() != NULL | $form->get('password')->getData() != "") {
                    $password12 = $encoder->encodePassword($form->get('password')->getData(), $usr->getSalt());
                }
                $usr->setPassword($password12);
                $em->persist($thongtincanhan);
                $em->flush();
                $this->get('session')->getFlashBag()->add('notice', 'Cập nhật thông tin người dùng thành công!');
            } 
            else {
                $this->get('session')->getFlashBag()->add('error', 'Vui lòng điền chính xác các thông tin yêu cầu bên dưới!!!');
            }
        }
        return $this->render('AcmePermissionBundle:Default:profile.html.twig', array('form' => $form->createView()));
    }

    public function indexAction() {
        return $this->render('AcmePermissionBundle:Admin:baseAdmin.html.twig');
    }

    public function tableUserAction($idElement) {
        $user = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:User');
        $users = $resposity->findBy(array('tenant' => $user->getTenant()->getId()));
        $form = $this->createFormBuilder()
                ->add('users', 'entity', array(
                    'class' => 'AcmePermissionBundle:User',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                return $er->createQueryBuilder('u')
                        ->JOIN('u.tenant', 't')
                        ->WHERE('t.id = :tenantid')
                        ->setParameter('tenantid', $user->getTenant()->getId());
            },
                    'property' => 'id',
                    'multiple' => TRUE,
                    'expanded' => TRUE
                ))
                ->add('submit', 'submit')
                ->getForm();
        return $this->render('AcmePermissionBundle:Default:tableUser.html.twig', array('users' => $users, 'form' => $form->createView(), 'idElement' => $idElement));
    }

    public function tableCongdanAction($idElement) {
        $user = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Congdan');
        $congdans = $resposity->findBy(array('tenant' => $user->getTenant()->getId()));
        $form = $this->createFormBuilder()// tao checkbox xoa
                ->add('congdans', 'entity', array(
                    'class' => 'AcmePermissionBundle:Congdan',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                return $er->createQueryBuilder('u')
                        ->JOIN('u.tenant', 't')
                        ->WHERE('t.id = :tenantid')
                        ->setParameter('tenantid', $user->getTenant()->getId());
            },
                    'property' => 'idcongdan',
                    'multiple' => TRUE,
                    'expanded' => TRUE
                ))
                ->add('submit', 'submit')
                ->getForm();
        return $this->render('AcmePermissionBundle:Default:tableCongdan.html.twig', array('congdans' => $congdans, 'form' => $form->createView(), 'idElement' => $idElement));
    }

    public function tableTTHCAction() {
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:TTHC');
        $vaitro = $resposity->findAll();
        $form = $this->createFormBuilder()
                ->add('vaitro', 'entity', array(
                    'class' => 'AcmePermissionBundle:Tthc',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                return $er->createQueryBuilder('u')
                        ->JOIN('u.tenant', 't')
                        ->WHERE('t.id = :tenantid')
                        ->setParameter('tenantid', $user->getId());
            },
                    'property' => 'idtthc',
                    'expanded' => TRUE
                ))
                ->getForm();

        return $this->render('AcmePermissionBundle:Default:tableTTHC.html.twig', array('vaitro' => $vaitro, 'form' => $form->createView()));
    }

    public function countHSAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $hs = $em->createQuery(
                        'SELECT hs
            FROM AcmePermissionBundle:Hosotthc hs
            JOIN hs.tthc t
            JOIN t.quyentthc q
            JOIN q.quyenhan qh
            JOIN q.user u
            JOIN t.linhvuc lv
            JOIN hs.tinhtrangthuly tt
            WHERE u.id = :userid AND qh.id = 2 AND lv.tenant = :tenant group by hs.idhosotthc having count(tt.trangthaihoso) < 4'
                )
                ->setParameter('userid', $usr->getId())
                ->setParameter("tenant", $usr->getTenant()->getId())
                ->getResult();
        return $this->render('AcmePermissionBundle:Default:staffHoso.html.twig', array('hs' => $hs));
    }

    public function countTTHCChoniemyetAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $tthc = $em->createQuery(
                        'SELECT t
            FROM AcmePermissionBundle:Tthc t
            JOIN t.quyentthc q
            JOIN q.quyenhan qh
            JOIN q.user u
            JOIN t.linhvuc lv
            WHERE u.id = :userid AND qh.id = 1 AND t.ishide = 0 AND lv.tenant = :tenantid'
                )->setParameter('userid', $usr->getId())
                ->setParameter('tenantid', $usr->getTenant()->getId())
                ->getResult();
        return $this->render('AcmePermissionBundle:Default:staffTTHC.html.twig', array('tthc' => $tthc));
    }

    public function countAQAction() {
        $user = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $hoidaptt = $em->createQuery(
                        'SELECT hd FROM AcmePermissionBundle:Hoidaptt hd '
                        . 'JOIN hd.tthc t '
                        . 'JOIN t.quyentthc q '
                        . 'JOIN q.user u '
                        . 'JOIN t.linhvuc lv '
                        . 'WHERE u.id = :id AND lv.tenant = :tenantid AND hd.cautraloi is null')
                ->setParameter('id', $user->getId())
                ->setParameter('tenantid', $user->getTenant()->getId())
                ->getResult();
        return $this->render('AcmePermissionBundle:Default:staffAQ.html.twig', array('hoidaptt' => $hoidaptt));
    }

    public function tenantRegisterAction(Request $request) {
        $em = $this->getDoctrine()->getManager();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Role');
        $role = $resposity->find(1);
        $user = new User();
        $form = $this->createFormBuilder($user)
                ->add('username', 'text')
                ->add('password', 'password')
                ->add('tenant', new TenantRegisterType())
                ->add('register', 'submit', array(
                    'label' => 'Đăng ký'
                ))
                ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()) {
            $em->persist($user->getTenant());
            $encoder = $this->container->get('security.encoder_factory')->getEncoder($user);
            $password12 = $encoder->encodePassword($user->getPassword(), $user->getSalt());
            $user->setUsername($user->getUsername() . "@" . $user->getTenant()->getDomain());
            $user->setPassword($password12);
            $user->setHoten($user->getTenant()->getHoten());
            $user->addRole($role);
            $em->persist($user);
            try {
                $em->flush();
            }
            catch(\Doctrine\DBAL\DBALException $e){
                $this->get('session')->getFlashBag()->add('notice', 'Đơn vị này đã được đăng ký với hệ thống - Quý khách vui lòng kiểm tra lại!');
                return $this->render('AcmePermissionBundle:Default:blank1.html.twig', array('form' => $form->createView()));
            }
            $this->get('session')->getFlashBag()->add('notice', 'Tạo người dùng mới thành công - Hãy đăng nhập theo tên đăng nhập và mật khẩu đã đăng ký!');
            return $this->redirect($this->generateUrl('login', array('domain' => $user->getTenant()->getDomain())));
        }
        return $this->render('AcmePermissionBundle:Default:blank1.html.twig', array('form' => $form->createView()));
    }

    public function showExpertAction() {
        $user = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Chuyenvienthuly');
        $chuyenvien = $resposity->createQueryBuilder("c")
                ->JOIN("c.donvithuly", "d")
                ->WHERE("d.tenant = :tenant")
                ->setParameter("tenant", $user->getTenant()->getId())
                ->getQuery()
                ->getResult();
        $form = $this->createFormBuilder()// tao checkbox xoa
                ->add('chuyenvienthuly', 'entity', array(
                    'class' => 'AcmePermissionBundle:Chuyenvienthuly',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                return $er->createQueryBuilder('c')
                        ->JOIN('c.donvithuly', 'd')
                        ->WHERE('d.tenant = :tenantid')
                        ->setParameter('tenantid', $user->getTenant()->getId());
            },
                    'property' => 'idChuyenvienthuly',
                    'expanded' => TRUE,
//                    'multiple'=>TRUE
                ))
                ->add('submit', 'submit')
                ->getForm();
        return $this->render('AcmePermissionBundle:Default:tableChuyenvien.html.twig', array('chuyenvien' => $chuyenvien, 'form' => $form->createView()));
    }

    public function createChuyenvienthulyAction(Request $request) {
        $this->get('session')->getFlashBag()->clear();
        $user = $this->get('security.context')->getToken()->getUser();
        $chuyenvienthuly = new Chuyenvienthuly();
        $form = $this->createForm(new ChuyenvienthulyType($user), $chuyenvienthuly);
        $form->handleRequest($request);
        if ($form->isSubmitted()) {
            if ($form->isValid()) {
                $em = $this->getDoctrine()->getManager();
                $em->persist($chuyenvienthuly);
                $em->flush();
                return $this->render('AcmePermissionBundle:Default:creationCvtlSuccess.html.twig', array('id' => $chuyenvienthuly->getIdchuyenvienthuly()));
            } else {
                $this->get('session')->getFlashBag()->add('error', 'Thông tin đăng ký chưa đúng!!!');
            }
        }
        return $this->render('AcmePermissionBundle:Default:creationChuyenvienthuly.html.twig', array('form' => $form->createView()));
    }

}
