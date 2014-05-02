<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Vaitro
 *
 * @ORM\Table(name="vaitro")
 * @ORM\Entity
 */
class Vaitro
{
    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=45, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="mota", type="string", length=45, nullable=true)
     */
    private $mota;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;



    /**
     * Set name
     *
     * @param string $name
     * @return Vaitro
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set mota
     *
     * @param string $mota
     * @return Vaitro
     */
    public function setMota($mota)
    {
        $this->mota = $mota;

        return $this;
    }

    /**
     * Get mota
     *
     * @return string 
     */
    public function getMota()
    {
        return $this->mota;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }
}
