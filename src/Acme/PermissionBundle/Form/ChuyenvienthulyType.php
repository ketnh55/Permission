<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ChuyenvienthulyType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('namecb','text',array(
            'label'=>'Họ tên:'
        ))
        ->add('quequan','text',array(
    'label'=>'Quê quán'
        ))
        ->add('noiohientai','text',array(
    'label'=>'Nơi ở hiện tại'
        ))
        ->add('ngaysinh','date',array(
            'label' =>'Ngày sinh'
        ))
        ->add('cmtnd','number',array(
            'label' =>'Số CMTND'
        ))
        ->add('email','email',array(
            'label' =>'Email'
        ))
        ->add('sdt','number',array(
            'label'=>'SDT'
        ))
        ->add('submit','submit')
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Chuyenvienthuly'
        ));
    }
    public function getName()
    {
        return 'cvty';
    }    
}

