<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Acme\PermissionBundle\Form\ThongtincanhanType;

class UserPassType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('password', 'repeated', array(
                    'type' => 'password',
                    'first_options' => array('label' => 'Password'),
                    'second_options' => array('label' => 'Repeat Password'),
                    'required' => FALSE
                ))
                ->add('thontincanhan', new ThongtincanhanType())
                ->add('submit', 'submit', array(
                    'label' => 'Ghi nhận'
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\User'
        ));
    }

    public function getName() {
        return 'user';
    }

}
