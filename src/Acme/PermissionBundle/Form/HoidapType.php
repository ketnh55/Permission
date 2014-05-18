<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class HoidapType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('cauhoi', 'text')
                ->add('cautraloi', 'textarea', array(
                    'label' => 'Câu trả lời:',
                    'required' => FALSE
                ))
                ->add('thoigiantraloi', 'date', array(
                    'widget' => 'text'
                ))
                ->add('submit', 'submit', array(
                    'label' => 'Trả lời'
                ))

        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Hoidaptt'
        ));
    }

    public function getName() {
        return 'hoidaptt';
    }

}
