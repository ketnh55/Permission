<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Groupfunction
 *
 * @ORM\Table(name="groupfunction", indexes={@ORM\Index(name="fk_GroupFunction_Role1_idx", columns={"Role"})})
 * @ORM\Entity
 */
class Groupfunction
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
     * @ORM\Column(name="description", type="string", length=45, nullable=true)
     */
    private $description;
    /**
     * @var string
     *
     * @ORM\Column(name="icon", type="string", length=45, nullable=true)
     */
    private $icon;

    /**
     * @var integer
     *
     * @ORM\Column(name="idGroupFunction", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idgroupfunction;

    /**
     * @var \Acme\PermissionBundle\Entity\Role
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Role")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Role", referencedColumnName="id", nullable=false)
     * })
     */
    private $role;
    /**
    * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Functions", mappedBy="groupfunction")
    */
    public $functions;
    public function __construct()
    {
        $this->functions = new \Doctrine\Common\Collections\ArrayCollection();
    }
    public function getFunctions(){
            return $this->functions;
    }
    /**
     * Get icon
     *
     * @return string 
     */
    public function getIcon()
    {
        return $this->icon;
    }
    /**
     * Set icon
     *
     * @param string $path
     * @return Functions
     */
    public function setIcon($icon)
    {
        $this->icon = $icon;

        return $this;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Groupfunction
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
     * Set description
     *
     * @param string $description
     * @return Groupfunction
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string 
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Get idgroupfunction
     *
     * @return integer 
     */
    public function getIdgroupfunction()
    {
        return $this->idgroupfunction;
    }

    /**
     * Set role
     *
     * @param \Acme\PermissionBundle\Entity\Role $role
     * @return Groupfunction
     */
    public function setRole(\Acme\PermissionBundle\Entity\Role $role = null)
    {
        $this->role = $role;

        return $this;
    }

    /**
     * Get role
     *
     * @return \Acme\PermissionBundle\Entity\Role 
     */
    public function getRole()
    {
        return $this->role;
    }
}
