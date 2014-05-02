<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ThongtincanhanType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){        
        $builder->add('hoten','text',array(
            'label'=>'Họ tên',
            'required'=>FALSE
        ))
        ->add('quequan','text',array(
            'label'=>'Quê quán',
            'required'=>FALSE
        ))
        ->add('cmtnd','text',array(
            'label'=>'CMTND',
            'required'=>FALSE
        ))
        ->add('sdt','text',array(
            'label'=>'SĐT',
            'required'=>FALSE
        ))
        ->add('ngaysinh','date',array(
            'label' =>'Ngày sinh',
            'required'=>FALSE,
            'widget'=>'text'
        ))
        ->add('file','file',array(
            'label' =>'Ảnh đại diện',
            'required'=>FALSE
        ))
        ->add('submit','submit')
            ;
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Thontincanhan'
        ));
    }
    public function getName()
    {
        return 'thongtincanhan';
    }    
}

