<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Quyenhan
 *
 * @ORM\Table(name="quyenhan", indexes={@ORM\Index(name="fk_quyenhan_role1_idx", columns={"role"})})
 * @ORM\Entity
 */
class Quyenhan {

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
     * @var \Acme\PermissionBundle\Entity\Role
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Role")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="role", referencedColumnName="id")
     * })
     */
    private $role;

    /**
     * Set name
     *
     * @param string $name
     * @return Quyenhan
     */
    public function setName($name) {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName() {
        return $this->name;
    }

    /**
     * Set mota
     *
     * @param string $mota
     * @return Quyenhan
     */
    public function setMota($mota) {
        $this->mota = $mota;

        return $this;
    }

    /**
     * Get mota
     *
     * @return string 
     */
    public function getMota() {
        return $this->mota;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId() {
        return $this->id;
    }

    /**
     * Set role
     *
     * @param \Acme\PermissionBundle\Entity\Role $role
     * @return Quyenhan
     */
    public function setRole(\Acme\PermissionBundle\Entity\Role $role = null) {
        $this->role = $role;

        return $this;
    }

    /**
     * Get role
     *
     * @return \Acme\PermissionBundle\Entity\Role 
     */
    public function getRole() {
        return $this->role;
    }

}
