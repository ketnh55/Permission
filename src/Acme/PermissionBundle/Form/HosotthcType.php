<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;
use Acme\PermissionBundle\Form\DinhkemnhanType;
class HosotthcType extends AbstractType{
    private $user;
    public function __construct($user) {
        $this->user = $user;
    }
    public function buildForm(FormBuilderInterface $builder, array $options){  
        $user = $this->user;
        $builder->add('congdan','entity',array(
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
            'label'=>'Ngày nhận',
            'years'=>range(2014,2014)
        ))
        ->add('ngayhentra','date',array(
            'widget'=>'text',
            'label'=>'Ngày hẹn trả',
            'years'=>range(2014,2016)
        )) 
        ->add('submit','submit',array(
            'label'=>'Ghi nhận'
        ))
        ->add('dinhkemnhanhs', 'collection', array(
                    'type'=>new DinhkemnhanType()
        ));                             
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

