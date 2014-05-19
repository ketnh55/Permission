<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ThongtincanhanType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder
                ->add('quequan', 'text', array(
                    'label' => 'Quê quán',
                    'required' => FALSE
                ))
                ->add('cmtnd', 'number', array(
                    'label' => 'CMTND',
                    'required' => FALSE
                ))
                ->add('sdt', 'number', array(
                    'label' => 'SĐT',
                    'required' => FALSE
                ))
                ->add('ngaysinh', 'date', array(
                    'label' => 'Ngày sinh',
                    'required' => FALSE,
                    'years'=>range(1949,1994)
                ))
                ->add('file', 'file', array(
                    'label' => 'Ảnh đại diện',
                    'required' => FALSE
                ))
                ->add('email', 'email', array(
                    'label' => 'Email',
                    'required' => FALSE
                ))
                ->add('noiohientai', 'text', array(
                    'label' => 'Nơi ở hiện tại',
                    'required' => FALSE
                ))
                ->add('submit', 'submit', array(
                    'label' => 'Ghi nhận'
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Thontincanhan'
        ));
    }

    public function getName() {
        return 'thongtincanhan';
    }

}
