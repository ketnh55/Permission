<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Role
 *
 * @ORM\Table(name="role")
 * @ORM\Entity
 */
class Role implements \Symfony\Component\Security\Core\Role\RoleInterface {

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=45, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="role", type="string", length=45, nullable=false)
     */
    private $role;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Acme\PermissionBundle\Entity\User", mappedBy="role")
     */
    private $user;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Acme\PermissionBundle\Entity\Functions", inversedBy="role")
     * @ORM\JoinTable(name="role_has_functions",
     *   joinColumns={
     *     @ORM\JoinColumn(name="Role_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="Functions_idFunctions", referencedColumnName="idFunctions")
     *   }
     * )
     */
    private $functionsfunctions;

    /**
     * @var \Doctrine\Common\Collections\Collection
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Groupfunction", mappedBy="role")
     */
    private $groupfunc;

    /**
     * Constructor
     */
    public function __construct() {
        $this->user = new \Doctrine\Common\Collections\ArrayCollection();
        $this->functionsfunctions = new \Doctrine\Common\Collections\ArrayCollection();
        $this->groupfunc = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * 
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getGroupfunc() {
        return $this->groupfunc;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Role
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
     * Set role
     *
     * @param string $role
     * @return Role
     */
    public function setRole($role) {
        $this->role = $role;

        return $this;
    }

    /**
     * Get role
     *
     * @return string 
     */
    public function getRole() {
        return $this->role;
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
     * Add user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     * @return Role
     */
    public function addUser(\Acme\PermissionBundle\Entity\User $user) {
        $this->user[] = $user;

        return $this;
    }

    /**
     * Remove user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     */
    public function removeUser(\Acme\PermissionBundle\Entity\User $user) {
        $this->user->removeElement($user);
    }

    /**
     * Get user
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getUser() {
        return $this->user;
    }

    /**
     * Add functionsfunctions
     *
     * @param \Acme\PermissionBundle\Entity\Functions $functionsfunctions
     * @return Role
     */
    public function addFunctionsfunction(\Acme\PermissionBundle\Entity\Functions $functionsfunctions) {
        $this->functionsfunctions[] = $functionsfunctions;

        return $this;
    }

    /**
     * Remove functionsfunctions
     *
     * @param \Acme\PermissionBundle\Entity\Functions $functionsfunctions
     */
    public function removeFunctionsfunction(\Acme\PermissionBundle\Entity\Functions $functionsfunctions) {
        $this->functionsfunctions->removeElement($functionsfunctions);
    }

    /**
     * Get functionsfunctions
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getFunctionsfunctions() {
        return $this->functionsfunctions;
    }

}
