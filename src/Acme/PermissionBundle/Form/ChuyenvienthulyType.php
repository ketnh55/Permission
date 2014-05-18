<?php

namespace Acme\PermissionBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Doctrine\ORM\EntityRepository;

class ChuyenvienthulyType extends AbstractType {

    private $user;

    public function __construct($user) {
        $this->user = $user;
    }

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $user = $this->user;
        $builder->add('namecb', 'text', array(
                    'label' => 'Họ tên:'
                ))
                ->add('quequan', 'text', array(
                    'label' => 'Quê quán'
                ))
                ->add('noiohientai', 'text', array(
                    'label' => 'Nơi ở hiện tại'
                ))
                ->add('ngaysinh', 'date', array(
                    'label' => 'Ngày sinh'
                ))
                ->add('cmtnd', 'number', array(
                    'label' => 'Số CMTND'
                ))
                ->add('email', 'email', array(
                    'label' => 'Email'
                ))
                ->add('sdt', 'number', array(
                    'label' => 'SDT'
                ))
                ->add('donvithuly', 'entity', array(
                    'label' => 'Đơn vị thụ lý',
                    'class' => 'AcmePermissionBundle:Donvithuly',
                    'query_builder' => function(EntityRepository $er) use ($user) {
                return $er->createQueryBuilder('dv')
                        ->WHERE('dv.tenant = :tenantid')
                        ->setParameter('tenantid', $user->getTenant()->getId());
            },
                    'property' => 'namedonvithuly'
                ))
                ->add('submit', 'submit', array(
                    'label' => 'Đăng ký'
                ))
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver) {
        $resolver->setDefaults(array(
            'data_class' => 'Acme\PermissionBundle\Entity\Chuyenvienthuly'
        ));
    }

    public function getName() {
        return 'cvty';
    }

}
