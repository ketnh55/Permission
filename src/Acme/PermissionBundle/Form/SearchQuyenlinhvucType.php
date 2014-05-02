<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class SearchQuyenlinhvucType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('quyenhan','entity',array(
            'class'=>'AcmePermissionBundle:Quyenhan',
            'preferred_choices'=>array($options['preferred_quyenhan']),
            'property'=>'ten',
            'label'=>'Quyền hạn',
        ))
        ->add('linhvuc','entity',array(
            'class'=>'AcmePermissionBundle:Linhvuc',
            'property'=>'name',
            'preferred_choices'=>array($options['preferred_linhvuc']),
            'label'=>'Lĩnh vực',
        ))   
        ->add('submit','submit')
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Quyenlinhvuc',
            'preferred_quyenhan'=>'',
            'preferred_linhvuc'=>''
        ));
    }
    public function getName()
    {
        return 'quyenlinhvuc';
    }    
}

