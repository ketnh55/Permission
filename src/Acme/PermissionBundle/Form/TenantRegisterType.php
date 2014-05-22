<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class TenantRegisterType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder
                ->add('hoten','text',array(
                    'label'=>'Tên cá nhân đăng ký'
                ))
                ->add('quequan', 'text', array(
                    'label' => 'Quê quán'
                ))
                ->add('cmtnd', 'number', array(
                    'label' => 'CMTND'
                ))
                ->add('sdt', 'number', array(
                    'label' => 'Số điện thoại'
                ))
                ->add('tendonvi', 'text', array(
                    'label' => 'Tên đơn vị'
                ))
                ->add('domain', 'text', array(
                    'label' => 'Domain'
                ))
                ->add('ngaysinh', 'date', array(
                    'label' => 'Ngày sinh',
//                    'widget' => 'text',
                    'years' => range(1930,1994)
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Tenant'
        ));
    }

    public function getName() {
        return 'linhvuc';
    }

}
