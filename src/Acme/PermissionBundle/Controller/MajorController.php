<?php

namespace Acme\PermissionBundle\Controller;

use Acme\PermissionBundle\Entity\Quyentthc;
use Acme\PermissionBundle\Form\QuyenTTHCType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use JMS\SecurityExtraBundle\Annotation\Secure;
use Symfony\Component\HttpFoundation\Request;

class MajorController extends Controller {

    /**
     * @Secure(roles="ROLE_MAJOR")
     */
    public function showStaffAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $staff = $em->createQuery('SELECT u from AcmePermissionBundle:User u '
                                . 'JOIN u.role r '
                                . 'WHERE r.id = 2 AND u.tenant = :tenantid')
                        ->setParameter('tenantid', $usr->getTenant()->getId())->getResult();
        return $this->render('AcmePermissionBundle:Major:showStaff.html.twig', array('staffs' => $staff));
    }

    /**
     * @Secure(roles="ROLE_MAJOR")
     */
    public function statisticPermissionStaffAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Hosotthc');
        $profiles = $resposity->createQueryBuilder("hoso")
                ->JOIN("hoso.tthc", "tthc")
                ->JOIN("tthc.linhvuc", "lv")
                ->WHERE("linhvuc.tenant = :tenant")
                ->setParameter("tenant", $usr->getTenant()->getId());
        return $this->render('AcmePermissionBundle:Staff:statistic.html.twig', array('profiles' => $profiles));
    }

    /**
     * @Secure(roles="ROLE_MAJOR")
     */
    public function statisticStatusAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Hosotthc');
        $cu_month = (int)date('m');
        $cu_year = (int)date('Y');  
        foreach (range(1, $cu_month) as $moth){
        $start = $cu_year.'/'.$moth.'/01';
        $end = $cu_year.'/'.$moth.'/30';        
        $hoso[] = $resposity->createQueryBuilder("hs")
                        ->JOIN("hs.tthc", "tthc")
                        ->JOIN("tthc.linhvuc", "lv")
                        ->JOIN("hs.tinhtrangthuly","tt")
                        ->WHERE("lv.tenant = :tenant and hs.ngaynhan between :start and :end")
                        ->GROUPBY("hs.idhosotthc")
                        ->HAVING("count(tt.trangthaihoso) = 1")
                        ->setParameter("tenant", $usr->getTenant()->getId())
                        ->setParameter("start",$start)
                        ->setParameter("end",$end)
                        ->getQuery()->getResult();        
        $hosoptl[] = $resposity->createQueryBuilder("hs")
                        ->JOIN("hs.tthc", "tthc")
                        ->JOIN("tthc.linhvuc", "lv")
                        ->JOIN("hs.tinhtrangthuly","tt")
                        ->WHERE("lv.tenant = :tenant and hs.ngaynhan between :start and :end")
                        ->GROUPBY("hs.idhosotthc")
                        ->HAVING("count(tt.trangthaihoso) = 2")
                        ->setParameter("tenant", $usr->getTenant()->getId())
                        ->setParameter("start",$start)
                        ->setParameter("end",$end)
                        ->getQuery()->getResult();
        $hosotcd[] = $resposity->createQueryBuilder("hs")
                        ->JOIN("hs.tthc", "tthc")
                        ->JOIN("tthc.linhvuc", "lv")
                        ->JOIN("hs.tinhtrangthuly","tt")
                        ->WHERE("lv.tenant = :tenant and hs.ngaynhan between :start and :end")
                        ->GROUPBY("hs.idhosotthc")
                        ->HAVING("count(tt.trangthaihoso) = 4")
                        ->setParameter("tenant", $usr->getTenant()->getId())
                        ->setParameter("start",$start)
                        ->setParameter("end",$end)
                        ->getQuery()->getResult();
        }    
        return $this->render('AcmePermissionBundle:Major:statisticHoso.html.twig', array('hoso' => $hoso,'hosoptl'=>$hosoptl,'hosotcd'=>$hosotcd));
    }

    /**
     * @Secure(roles="ROLE_MAJOR")
     */
    public function statisticTTHCAction() {
        $usr = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tthc');
        $tthc = $resposity->createQueryBuilder("tthc")
                        ->JOIN("tthc.linhvuc", "lv")
                        ->WHERE("lv.tenant = :tenant")
                        ->setParameter("tenant", $usr->getTenant()->getId())->getQuery()->getResult();
        return $this->render('AcmePermissionBundle:Major:statisticTTHC.html.twig', array('tthc' => $tthc));
    }

    /**
     * @Secure(roles="ROLE_MAJOR")
     */
    public function permissionStaffAction($id, Request $request) {
        $usr = $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:User');
        $user = $resposity->find($id);
        $form = $this->createFormBuilder($user)
                ->add('quyentthc', 'collection', array(
                    'type' => new QuyenTTHCType($usr)
                ))
                ->add('submit', 'submit')
                ->getForm();

        $form->handleRequest($request);
        if ($form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Điều chỉnh quyền thành công!');
            return $this->redirect($this->generateUrl('permission_staff'));
        }
        return $this->render('AcmePermissionBundle:Major:permissionStaff.html.twig', array('form_array' => $form->createView()));
    }

    public function testAction() {
        return $this->render('AcmePermissionBundle:Major:a.html.twig');
    }

}
