<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Functions
 *
 * @ORM\Table(name="functions", indexes={@ORM\Index(name="fk_Function_GroupFunction1_idx", columns={"GroupFunction"})})
 * @ORM\Entity
 */
class Functions
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
     * @ORM\Column(name="path", type="string", length=45, nullable=false)
     */
    private $path;
    

    /**
     * @var integer
     *
     * @ORM\Column(name="idFunctions", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    
    private $idfunctions;

    /**
     * @var \Acme\PermissionBundle\Entity\Groupfunction
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Groupfunction")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="GroupFunction", referencedColumnName="idGroupFunction", nullable=false)
     * })
     */
    private $groupfunction;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Acme\PermissionBundle\Entity\Role", mappedBy="functionsfunctions")
     */
    private $role;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->role = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set name
     *
     * @param string $name
     * @return Functions
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
     * Set path
     *
     * @param string $path
     * @return Functions
     */
    public function setPath($path)
    {
        $this->path = $path;

        return $this;
    }
    
    /**
     * Get path
     *
     * @return string 
     */
    public function getPath()
    {
        return $this->path;
    }

    


    /**
     * Get idfunctions
     *
     * @return integer 
     */
    public function getIdfunctions()
    {
        return $this->idfunctions;
    }

    /**
     * Set groupfunction
     *
     * @param \Acme\PermissionBundle\Entity\Groupfunction $groupfunction
     * @return Functions
     */
    public function setGroupfunction(\Acme\PermissionBundle\Entity\Groupfunction $groupfunction = null)
    {
        $this->groupfunction = $groupfunction;

        return $this;
    }

    /**
     * Get groupfunction
     *
     * @return \Acme\PermissionBundle\Entity\Groupfunction 
     */
    public function getGroupfunction()
    {
        return $this->groupfunction;
    }

    /**
     * Add role
     *
     * @param \Acme\PermissionBundle\Entity\Role $role
     * @return Functions
     */
    public function addRole(\Acme\PermissionBundle\Entity\Role $role)
    {
        $this->role[] = $role;

        return $this;
    }

    /**
     * Remove role
     *
     * @param \Acme\PermissionBundle\Entity\Role $role
     */
    public function removeRole(\Acme\PermissionBundle\Entity\Role $role)
    {
        $this->role->removeElement($role);
    }

    /**
     * Get role
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getRole()
    {
        return $this->role;
    }
}
