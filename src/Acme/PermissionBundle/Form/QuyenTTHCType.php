<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Doctrine\ORM\EntityRepository;
class QuyenTTHCType extends AbstractType{
    private $user;
    public function __construct($user) {
        $this->user = $user;
    }
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event){
            $form = $event->getForm();
            $quyentthc = $event->getData();              
            $user = $this->user;
            if ($quyentthc !=NULL && NULL != $quyentthc->getTthc()){               
                $form->add('tthc','entity',array(
                    'class'=>'AcmePermissionBundle:Tthc',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                        return $er->createQueryBuilder('tthc')     
                                ->JOIN('tthc.linhvuc','lv')
                                ->JOIN('lv.tenant','t')   
                                ->WHERE ('t.id = :tenantid')
                                ->setParameter('tenantid',$user->getTenant()->getId());
                    },        
                    'property'=>'nametthc',
                    'label'=>'Thủ tục hành chính',
                ));
            }
            $form->add('quyenhan', 'entity',array(
                    'class'=>'AcmePermissionBundle:Quyenhan',                   
                    'property'=>'name',
                    'label' => 'Quyền hạn'))
                ->add('user','entity',array(
                'class'=>'AcmePermissionBundle:User',
                'property'=>'username',
                'query_builder' => function(EntityRepository $er) use ($user,$quyentthc) {
                        return $er->createQueryBuilder('u')     
                                ->JOIN('u.tenant','t')
                                ->JOIN('u.role','r')
                                ->WHERE ('t.id = :tenantid AND r.id = :role')
                                ->setParameter('tenantid',$user->getTenant()->getId())
                        ->setParameter('role',$quyentthc->getQuyenhan()->getRole());
                },
                'label'=>'User',      
            ))
            
             ->add('submit','submit');
        });
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Quyentthc',
        ));
    }
    public function getName()
    {
        return 'quyentthc';
    }    
}



