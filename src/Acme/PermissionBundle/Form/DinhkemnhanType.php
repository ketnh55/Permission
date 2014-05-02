<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class DinhkemnhanType extends AbstractType{
    
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('tenfiledinhkem','checkbox',array(
            'label' =>'Đính kèm'
        ))
            ->add('dinhkemtthc','entity',array(
                'class'=>'AcmePermissionBundle:Dinhkemtthc',
                'property'=>'iddinhkemtthc'
            ))
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Dinhkemnhanhs'
        ));
    }
    public function getName()
    {
        return 'dinhkemnhanhs';
    }    
}

