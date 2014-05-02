<?php
namespace Acme\PermissionBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use JMS\SecurityExtraBundle\Annotation\Secure;
use Acme\PermissionBundle\Form\TTHCType;
use Acme\PermissionBundle\Form\HoidapType;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\ORM\EntityRepository;
use Acme\PermissionBundle\Entity\Hosotthc;
use Acme\PermissionBundle\Form\HosotthcType;
use Acme\PermissionBundle\Entity\Vanbanlienquan;
use Acme\PermissionBundle\Entity\Dinhkemtthc;
use Acme\PermissionBundle\Entity\Dinhkemnhanhs;
class StaffController extends Controller
{
    /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function showReceptionAction()
    {
        $usr = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $tthc = $em->createQuery('SELECT t FROM AcmePermissionBundle:Tthc t JOIN t.linhvuc lv WHERE lv.tenant = :tenantid AND t.ishide=1')
                ->setParameter('tenantid',$usr->getTenant()->getId())->getResult();        
        return $this->render('AcmePermissionBundle:Staff:showReception.html.twig',array('tthcs'=>$tthc)); 
    }
    /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function receptionAction(Request $request,$id)
    {
        $usr = $this->get('security.context')->getToken()->getUser();       
        $em = $this->getDoctrine()->getManager();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tthc');
        $tthc = $resposity->find($id);       
        $hosotthc = new Hosotthc();     
        
        $hosotthc->setTthc($tthc);
        foreach ($tthc->getDinhkem() as $dinhkemtthc){
            $dinhkemnhanhs = new Dinhkemnhanhs();
            $dinhkemnhanhs->setDinhkemtthc($dinhkemtthc);
            $hosotthc->addDinhkemnhanhs($dinhkemnhanhs);
        }
        $form = $this->createForm(new HosotthcType($usr),$hosotthc,array(
            'action'=>$this->generateUrl('realReception',array("id"=>$tthc->getIdtthc()))
        ));
        $form->handleRequest($request);
        if($form->isValid()){
            $random = rand();
            $hosotthc->setSobiennhanhoso($random);
            foreach($hosotthc->getDinhkemnhanhs() as $dinhkemnhanhs){
                $dinhkemnhanhs->upload();
                $dinhkemnhanhs->setHosoTthc($hosotthc);
                $em->persist($dinhkemnhanhs);
            }
            $em->persist($hosotthc);
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Nộp hồ sơ thành công!');
            $pdfGenerator = $this->get('siphoc.pdf.generator');
            $pdfGenerator->setName('giaybienhan.pdf');
            return $pdfGenerator->displayForView(
                'AcmePermissionBundle:Staff:quittanceReceive.html.twig',array('chuyenvienthuly'=>$usr,'hoso'=>$hosotthc)
                );    
        }
        return $this->render('AcmePermissionBundle:Staff:reception.html.twig',array('form'=>$form->createView(),'id'=>$id)); 
    }
    /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function AQAction(Request $request)
    {
        $usr = $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();        
        $hoidaptt = $em->createQuery(
                'SELECT hd FROM AcmePermissionBundle:Hoidaptt hd '
                . 'JOIN hd.tthc t '
                . 'JOIN t.quyentthc q '
                . 'JOIN q.user u '
                . 'JOIN t.linhvuc lv '                
                . 'WHERE u.id = :id AND lv.tenant = :tenant AND hd.cautraloi is null')
                ->setParameter('id',$usr->getId())
                ->setParameter('tenant',$usr->getTenant()->getId())
                ->getResult();   
        if (count($hoidaptt) != 0){
            $tthc = $hoidaptt[0]->getTthc();
            $tthc->setHoidaptt($hoidaptt);
            $form = $this->createFormBuilder($tthc)
                    ->add('hoidaptt','collection',array(
                        'type'=>new HoidapType()
                    ))->getForm();
            $form->handleRequest($request);
            if ($form->isValid()){
                $em->flush();
            }
            return $this->render('AcmePermissionBundle:Staff:AQ.html.twig',array('hoidaptt'=>$hoidaptt,'form'=>$form->createView()));
        }
        return $this->render('AcmePermissionBundle:Staff:AQ.html.twig');
        
    }
     /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function statisticListTTHCAction()
    {
        $usr= $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $tthc = $em->createQuery(
        'SELECT t
        FROM AcmePermissionBundle:Tthc t
        JOIN t.quyentthc q
        JOIN q.quyenhan qh
        JOIN q.user u
        WHERE u.id = :userid AND qh.id = 1 AND t.ishide = 0'                
        )->setParameter('userid',$usr->getId())->getResult();
        return $this->render('AcmePermissionBundle:Staff:statisticListedTTHC.html.twig',array('array_tthc'=>$tthc));
    }
     /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function statisticListedTTHCAction()
    {
        $usr= $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();
        $tthc = $em->createQuery(
        'SELECT t
        FROM AcmePermissionBundle:Tthc t
        JOIN t.quyentthc q
        JOIN q.quyenhan qh
        JOIN q.user u
        WHERE u.id = :userid AND qh.id = 1 AND t.ishide = 1'                
        )->setParameter('userid',$usr->getId())->getResult();
        return $this->render('AcmePermissionBundle:Staff:statisticListedTTHC.html.twig',array('array_tthc'=>$tthc));
    }
     /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function listedTTHCAction($id,Request $request)
    {
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tthc');
        $tthc = $resposity->find($id);        
        if (count($tthc->getVanbanlienquan()) == 0){
            $tthc->addVanbanlienquan(new Vanbanlienquan());
        }
        if (count($tthc->getDinhkem()) == 0){
            $tthc->addDinhkem(new Dinhkemtthc());
        }
        $form = $this->createForm(new TTHCType(),$tthc);
        $form->handleRequest($request);
        $em = $this->getDoctrine()->getManager();
        if ($form->isValid()) {
            if ($form->get('niemyet')->isClicked()){
                $tthc->setIshide(TRUE);
            }          
            foreach ($tthc->getDinhkem() as $dinhkem){
                $dinhkem->upload();
                $dinhkem->setTthc($tthc);
                $em->persist($dinhkem);
            }
            foreach ($tthc->getVanbanlienquan() as $vblq){
                $vblq->upload();
                $vblq->setTthc($tthc);
                $em->persist($vblq);
            }            
            $em->flush();
            $this->get('session')->getFlashBag()->add('notice', 'Thêm thông tin thủ tục hành chính thành công!');
            return $this->redirect($this->generateUrl('statisticListTTHC'));
        }
        return $this->render('AcmePermissionBundle:Staff:listedTTHC.html.twig',array('tthc'=>$tthc,'form'=>$form->createView()));
    }
     /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function forwardHosoTTHCAction(Request $request){
        $usr= $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();    
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tinhtrangthuly');
        $usr= $this->get('security.context')->getToken()->getUser();
        $tinhtrangthuly = $resposity->find(5);
        $hoso = $em->createQuery(
            'SELECT hs
            FROM AcmePermissionBundle:Hosotthc hs
            JOIN hs.tthc t
            JOIN t.quyentthc q
            JOIN q.quyenhan qh
            JOIN q.user u
            JOIN t.linhvuc lv
            WHERE u.id = :userid AND qh.id = 2 AND hs.tinhtrangthuly is NULL AND lv.tenant = :tenant'                
        )->setParameter('userid',$usr->getId())
                ->setParameter("tenant",$usr->getTenant()->getId())
                ->getResult();
        $form = $this->createFormBuilder()
                ->add('hosotthc','entity',array(
                    'class'=>'AcmePermissionBundle:Hosotthc',
                    'query_builder' => function(EntityRepository $er) use ($usr) {
                        return $er->createQueryBuilder('hs')                                
                                ->JOIN('hs.tthc','t')
                                ->JOIN('t.quyentthc','q')
                                ->JOIN ('q.quyenhan','qh')
                                ->JOIN ('q.user','u')        
                                ->JOIN ('t.linhvuc',"lv")
                                ->WHERE ('u.id = :userid AND qh.id = 2 AND hs.tinhtrangthuly is NULL AND lv.tenant = :tenant')
                                ->ORDERBY('hs.ngayhentra','desc')
                                ->setParameter('userid',$usr->getId())
                                ->setParameter('tenant',$usr->getTenant()->getId());
                    },                            
                    'property'=>'idhosotthc',
                    'multiple'=>TRUE,
                    'expanded'=>TRUE
                ))
                ->add('submit','submit')
                            ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()){
            foreach ($form->getData()['hosotthc'] as $hosotthc) {
                $hosotthc->setTinhtrangthuly($tinhtrangthuly);                
                $em->flush();        
               
            }
             return $this->redirect($this->generateUrl('showExpert',array('id'=>$hosotthc->getIdhosotthc())));
        }
        return $this->render('AcmePermissionBundle:Staff:forwardHoso.html.twig',array('form'=>$form->createView(),'hoso'=>$hoso));
    }
    /**
    * @Secure(roles="ROLE_STAFF")
    */
    public function giveBackHosoTTHCAction(Request $request){
        $usr= $this->get('security.context')->getToken()->getUser();
        $em = $this->getDoctrine()->getManager();    
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Tinhtrangthuly');
        $tinhtrangthuly = $resposity->find(5);
        $hoso = $em->createQuery(
            'SELECT hs
            FROM AcmePermissionBundle:Hosotthc hs
            JOIN hs.tthc t
            JOIN t.quyentthc q
            JOIN q.quyenhan qh
            JOIN q.user u        
            WHERE u.id = :userid AND qh.id = 2 AND hs.tinhtrangthuly =6'                
        )->setParameter('userid',$usr->getId())->getResult();
        $form = $this->createFormBuilder()
                ->add('hosotthc','entity',array(
                    'class'=>'AcmePermissionBundle:Hosotthc',
                    'query_builder' => function(EntityRepository $er) use ($usr) {
                        return $er->createQueryBuilder('hs')                                
                                ->JOIN('hs.tthc','t')
                                ->JOIN('t.quyentthc','q')
                                ->JOIN ('q.quyenhan','qh')
                                ->JOIN ('q.user','u')        
                                ->WHERE ('u.id = :userid AND qh.id = 2 AND hs.tinhtrangthuly = 6')
                                ->ORDERBY('hs.ngayhentra','desc')
                                ->setParameter('userid',$usr->getId());
                    },                            
                    'property'=>'idhosotthc',
                    'multiple'=>TRUE,
                    'expanded'=>TRUE
                ))
                ->add('submit','submit')
                            ->getForm();
        $form->handleRequest($request);
        if ($form->isValid()){
            foreach ($form->getData()['hosotthc'] as $hosotthc) {
                $hosotthc->setTinhtrangthuly($tinhtrangthuly);                
                $em->flush();                
            }
            return $this->redirect($this->generateUrl('forwardHoso'));
        }
        return $this->render('AcmePermissionBundle:Staff:giveback.html.twig',array('form'=>$form->createView(),'hoso'=>$hoso));
    }
    public function viewHosotthcAction($id){
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Hosotthc');
        $hosotthc = $resposity->find($id);
        return $this->render('AcmePermissionBundle:Staff:viewHosotthc.html.twig',array('hosotthc'=>$hosotthc)); 
    }
    public function saveHosotthcAction(){
        $usr= $this->get('security.context')->getToken()->getUser();
        $resposity = $this->getDoctrine()->getRepository('AcmePermissionBundle:Hosotthc');
        $hoso = $resposity->createQueryBuilder("h")
                ->JOIN("h.tthc","t")
                ->JOIN("t.linhvuc","lv")
                ->WHERE("lv.tenant = :tenant")
                ->setParameter("tenant",$usr->getTenant()->getId())->getQuery()->getResult();
        return $this->render('AcmePermissionBundle:Staff:saveHoso.html.twig',array('hosotthc'=>$hoso)); 
    }
}
