<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;

class VaitroxulyType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event) {
            $form = $event->getForm();
            $form->add('vaitro', 'entity', array(
                        'class' => 'AcmePermissionBundle:Vaitro',
                        'property' => 'name'))
                    ->add('hosotthc', 'entity', array(
                        'class' => 'AcmePermissionBundle:Hosotthc',
                        'property' => 'idhosotthc',
                        'label' => 'Từ hồ sơ'
                    ))
                    ->add('user', 'entity', array(
                        'class' => 'AcmePermissionBundle:Hosotthc',
                        'property' => 'idhosotthc',
                        'label' => 'đến hồ sơ'))
                    ->add('submit', 'submit');
        });
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Vaitroxuly'
        ));
    }

    public function getName() {
        return 'quyentthc';
    }

}
