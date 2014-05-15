<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;
class NewTTHCType extends AbstractType{
    private $user;
    public function __construct($user) {
        $this->user = $user;
    }
    public function buildForm(FormBuilderInterface $builder, array $options){      
        $user = $this->user;
        $builder->add('linhvuc','entity',array(
            'class'=>'AcmePermissionBundle:Linhvuc',
            'query_builder' => function(EntityRepository $er) use ($user) {
                        return $er->createQueryBuilder('lv')                                
                                ->JOIN('lv.tenant','t')   
                                ->WHERE ('t.id = :tenantid')
                                ->setParameter('tenantid',$user->getTenant()->getId());
                    },                            
                    'property'=>'namedv',
                    'label'=>'Lĩnh vực'
                ))   
            ->add('donvithuly','entity',array(
                'class'=>'AcmePermissionBundle:Donvithuly',
                'query_builder' => function(EntityRepository $er) use ($user) {
                        return $er->createQueryBuilder('dvtl')                                 
                                ->WHERE ('dvtl.tenant = :tenantid')
                                ->setParameter('tenantid',$user->getTenant()->getId());
                    },                            
                    'property'=>'namedonvithuly',
                    'label'=>'Đơn vị thụ lý'
            ))
            ->add('nametthc','text',array(
            'label'=>'Tên TTHC'
            ))
            ->add('quyentthc','collection',array(
                'type'=>new QuyenTTHCType($this->user),
            ))
            ->add('submit','submit');                       
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Tthc'
        ));
    }
    public function getName()
    {
        return 'tthc';
    }  
    
}

