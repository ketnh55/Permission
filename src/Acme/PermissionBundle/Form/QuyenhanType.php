<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class QuyenhanType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('name','text',array(
            'label'=>'Quyền hạn:'
        ))      
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Quyenhan'
        ));
    }
    public function getName()
    {
        return 'Quyenhan';
    }    
}

