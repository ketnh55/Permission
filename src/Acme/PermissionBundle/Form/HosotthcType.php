<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;
use Acme\PermissionBundle\Form\DinhkemnhanType;
use Acme\PermissionBundle\Entity\Dinhkemnhanhs;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
class HosotthcType extends AbstractType{
    private $user;
    public function __construct($user) {
        $this->user = $user;
    }
    public function buildForm(FormBuilderInterface $builder, array $options){  
        $user = $this->user;
        $builder
//                ->add('tthc','entity',array(
//            'class'=>'AcmePermissionBundle:Tthc',
//            'query_builder' => function(EntityRepository $er) use ($user) {
//                        return $er->createQueryBuilder('tthc')                                
//                                ->JOIN('tthc.quyentthc','qtthc')
//                                ->JOIN('qtthc.user','u')
//                                ->JOIN ('qtthc.quyenhan','qh')    
//                                ->JOIN('u.tenant','t')
//                                ->WHERE ('u.id = :userid AND qh.id = 2 AND tthc.ishide = 1 AND t.id = :tenantid')
//                                ->setParameter('userid',$user->getId())
//                                ->setParameter('tenantid',$user->getTenant()->getId());
//                    },                            
//                    'property'=>'nametthc',
//                    'label'=>'Thủ tục hành chính',
//                    'expanded'=>TRUE,
//                    'multiple'=>TRUE
//                ))    
        ->add('congdan','entity',array(
            'class'=>'AcmePermissionBundle:Congdan',
            'query_builder' => function(EntityRepository $er) use ($user) {
                        return $er->createQueryBuilder('c')     
                                ->JOIN('c.tenant','t')
                                ->WHERE ('t.id = :tenantid')
                                ->setParameter('tenantid',$user->getTenant()->getId());
                },
            'property'=>'name',
            'label'=>'Công dân'
        ))
        ->add('ngaynhan','date',array(
            'widget'=>'text',
            'label'=>'Ngày nhận'
        ))
        ->add('ngayhentra','date',array(
            'widget'=>'text',
            'label'=>'Ngày hẹn trả'
        )) 
        ->add('submit','submit')
        ->add('dinhkemnhanhs', 'collection', array(
                    'type'=>new DinhkemnhanType()
        ));
//        $builder->addEventListener(
//            FormEvents::PRE_SET_DATA,
//            function(FormEvent $event) use ($user){
//                $form = $event->getForm();
//                $data = $event->getData();
//                
//                $maxDinhkem = 0;
//                foreach ($user->getQuyentthc() as $quyentthc){
//                    $tthc = $quyentthc->getTthc();
//                    if ($maxDinhkem < count($tthc->getDinhkem()))
//                        $maxDinhkem = count($tthc->getDinhkem());
////                        $maxDinhkem = ($maxDinhkem < count($tthc->getDinhkemtthc())?count($tthc->getDinhkemtthc():$maxDinhkem;
//                }
//                for($i=0;$i < $maxDinhkem;$i++){
//                    $dinhkemnhanhs = new Dinhkemnhanhs();
//                    $data->addDinhkemnhanhs($dinhkemnhanhs);
//                }                    
//                $form->add('dinhkemnhanhs', 'collection', array(
//                    'type'=>new DinhkemnhanType()
//                ));
//            }
//        );                               
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Hosotthc'
        ));
    }
    public function getName()
    {
        return 'Hosotthc';
    }    
}

