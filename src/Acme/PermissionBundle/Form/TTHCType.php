<?php
namespace Acme\PermissionBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
class TTHCType extends AbstractType{
    public function buildForm(FormBuilderInterface $builder, array $options){       
        $builder->addEventListener(FormEvents::PRE_SET_DATA, function(FormEvent $event){
            $form = $event->getForm();
            $form->add('nametthc','text',array(
                'label'=>'Tên TTHC',
                'disabled'=>TRUE
            ))
            ->add('linhvuc','entity',array(
                'class'=>'AcmePermissionBundle:Linhvuc',
                'property'=>'namedv',
                'label'=>'Lĩnh vực',
                'disabled'=>TRUE
            ))
            ->add('noidungthuchien','textarea',array(
                'label'=>'Nội dung thực hiện'
            ))
            ->add('giaytohoso','textarea',array(
                'label'=>'Giấy tờ hồ sơ'

            ))
            ->add('thoigiangiaiquyet','text',array(
                'label'=>'Thời gian giải quyết',
                
            ))
            ->add('dinhkem','collection',array(
                'type'=>new DinhkemtthcType(),
                'allow_add' => true,
                'required'=>FALSE
            ))
           ->add('vanbanlienquan','collection',array(
                'type'=>new VanbanlienquanType(),
                'allow_add' => true,
                'required'=>FALSE
            ))
            ->add('save','submit')
            ->add('niemyet','submit',array(
                'label'=>'Niêm yết'
            ));
        });
    }
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
        'data_class' => 'Acme\PermissionBundle\Entity\Tthc'
        ));
    }
    public function getName()
    {
        return 'tthc';
    }  
    
}

