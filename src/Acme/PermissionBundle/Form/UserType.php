<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Acme\PermissionBundle\Form\QuyenlinhvucType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;

class UserType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event) {
            $user = $event->getData();
            $form = $event->getForm();
            if (!$user || null === $user->getId()) {
                $form->add('username', 'text', array(
                            'label' => 'Tên đăng nhập',
                            'attr' => array(
                                'class' => 'form-control',
                                'required' => TRUE
                            )
                        ))
                        ->add('password', 'password', array(
                            'label' => 'Mật khẩu',
                            'attr' => array(
                                'class' => 'form-control',
                                'required' => TRUE
                            )
                        ))
                        ->add('role', 'entity', array(
                            'label' => 'Trách nhiệm',
                            'class' => 'AcmePermissionBundle:Role',
                            'property' => 'name',
                            'multiple' => TRUE,
                            'attr' => array('class' => 'styled'),
                            'expanded' => TRUE,
                        ))
                        ->add('hoten', 'text', array(
                            'label' => 'Họ tên cán bộ',
                            'attr' => array(
                                'class' => 'form-control',
                                'required' => TRUE,
                    )))
                        ->add('Ghi nhận', 'submit');
            } else {
                $form->add('quyenlinhvuc', 'collection', array(
                    'type' => new QuyenlinhvucType(),
                    'allow_add' => true,
                    'label' => ''
                ));
            }
        });
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\User',
        ));
    }

    public function getName() {
        return 'user';
    }

}
