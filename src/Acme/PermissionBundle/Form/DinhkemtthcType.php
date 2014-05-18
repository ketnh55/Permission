<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class DinhkemtthcType extends AbstractType {

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('tenfiledk', 'text', array(
                    'label' => 'Giấy tờ yêu cầu'
                ))
                ->add('file', 'file', array(
                    'label' => 'Mẫu đính kèm (nếu có)'
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Dinhkemtthc'
        ));
    }

    public function getName() {
        return 'dinhkemtthc';
    }

}
