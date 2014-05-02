<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class VanbanlienquanType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('tenvblq','text',array(
            'label'=>'File VBLQ',
            'required'=>FALSE
        ))
        ->add('file','file',array(
            'label' =>'Đính kèm VBLQ',
            'required'=>FALSE
        ))
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Vanbanlienquan'
        ));
    }
    public function getName()
    {
        return 'vanbanlienquan';
    }    
}

