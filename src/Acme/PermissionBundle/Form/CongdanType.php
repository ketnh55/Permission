<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class CongdanType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('name', 'text', array(
                    'label' => 'Tên công dân:'
                ))
                ->add('ngaysinh', 'date', array(
                    'label' => 'Ngày sinh',
                    'years'=>range(1930,1994)
                ))
                ->add('quequan', 'text', array(
                    'label' => 'Quê quán'
                ))
                ->add('sdt', 'number', array(
                    'label' => 'Số điện thoại'
                ))
                ->add('email', 'email', array(
                    'label' => 'Email'
                ))
                ->add('cmtnd', 'number', array(
                    'label' => 'CMTND'
                ))
                ->add('noiohientai', 'text', array(
                    'label' => 'Nơi ở hiện tại'
                ))
                ->add('submit', 'submit', array(
                    'label' => 'Đăng ký'
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Congdan'
        ));
    }

    public function getName() {
        return 'congdan';
    }

}
