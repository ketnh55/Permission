<?php

namespace Acme\PermissionBundle\Entity;
use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\EquatableInterface;

/**
 * User
  * @ORM\Table(name="user", uniqueConstraints={@ORM\UniqueConstraint(name="isActive_UNIQUE", columns={"isActive"})}, indexes={@ORM\Index(name="fk_User_Thontincanhan1_idx", columns={"Thontincanhan"})})
 * @ORM\Entity(repositoryClass="Acme\PermissionBundle\Entity\UserRepository")
 */
class User implements UserInterface,  EquatableInterface, \Serializable
{
    
    /**
     * @var string
     *
     * @ORM\Column(name="username", type="string", length=45, nullable=false)
     */
    private $username;

    /**
     * @var string
     *
     * @ORM\Column(name="password", type="string", length=45, nullable=false)
     */
    private $password;

    /**
     * @var string
     *
     * @ORM\Column(name="hoten", type="string", length=45, nullable=false)
     */
    private $hoten;

    /**
     * @var boolean
     *
     * @ORM\Column(name="isActive", type="boolean", nullable=true)
     */
    private $isactive;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Acme\PermissionBundle\Entity\Thontincanhan
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Thontincanhan")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Thontincanhan", referencedColumnName="id")
     * })
     */
    private $thontincanhan;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Acme\PermissionBundle\Entity\Role", inversedBy="user")
     * @ORM\JoinTable(name="user_has_role",
     *   joinColumns={
     *     @ORM\JoinColumn(name="User_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="Role_id", referencedColumnName="id")
     *   }
     * )
     */
    private $role;
    /**
     * @var \Acme\PermissionBundle\Entity\Tenant
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tenant")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tenant", referencedColumnName="id", nullable=false)
     * })
     */
    private $tenant;

    /**
    * @var \Doctrine\Common\Collections\Collection
    * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Quyentthc", mappedBy="user")
    */
    private $quyentthc;
    /**
    * @var \Doctrine\Common\Collections\Collection
    * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Vaitroxuly", mappedBy="user")
    */
    private $vaitroxuly;
    /**
     * Constructor
     */
    public function __construct()
    {        
        $this->role = new \Doctrine\Common\Collections\ArrayCollection();
        $this->quyentthc = new \Doctrine\Common\Collections\ArrayCollection();       
        $this->vaitroxuly = new \Doctrine\Common\Collections\ArrayCollection();       
    }
    public function getQuyentthc(){
        return $this->quyentthc;
    }
    public function addQuyentthc(\Acme\PermissionBundle\Entity\Quyentthc $quyentthc)
    {
        $this->quyentthc[] = $quyentthc;

        return $this;
    }
    public function removeQuyentthc(\Acme\PermissionBundle\Entity\Quyentthc $quyentthc)
    {
        $this->quyentthc->removeElement($quyentthc);
    }
    public function getVaitroxuly(){
        return $this->vaitroxuly;
    }
    public function addVaitroxuyly(\Acme\PermissionBundle\Entity\Vaitroxuly $vaitroxuly)
    {
        $this->vaitroxuly[] = $vaitroxuly;

        return $this;
    }
    public function removeVaitroxuly(\Acme\PermissionBundle\Entity\Vaitroxuly $vaitroxuly)
    {
        $this->vaitroxuly->removeElement($vaitroxuly);
    }

    /**
     * Set username
     *
     * @param string $username
     * @return User
     */
    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

    /**
     * Get username
     *
     * @return string 
     */
    public function getUsername()
    {
        return $this->username;
    }
    

    /**
     * Set password
     *
     * @param string $password
     * @return User
     */
    public function setPassword($password)
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Get password
     *
     * @return string 
     */
    public function getPassword()
    {
        return $this->password;
    }   

    /**
     * Set isactive
     *
     * @param boolean $isactive
     * @return User
     */
    public function setIsactive($isactive)
    {
        $this->isactive = $isactive;

        return $this;
    }

    /**
     * Get isactive
     *
     * @return boolean 
     */
    public function getIsactive()
    {
        return $this->isactive;
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

    /**
     * Set thontincanhan
     *
     * @param \Acme\PermissionBundle\Entity\Thontincanhan $thontincanhan
     * @return User
     */
    public function setThontincanhan(\Acme\PermissionBundle\Entity\Thontincanhan $thontincanhan = null)
    {
        $this->thontincanhan = $thontincanhan;

        return $this;
    }

    /**
     * Get thontincanhan
     *
     * @return \Acme\PermissionBundle\Entity\Thontincanhan 
     */
    public function getThontincanhan()
    {
        return $this->thontincanhan;
    }

    /**
     * Add role
     *
     * @param \Acme\PermissionBundle\Entity\Role $role
     * @return User
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
    public function getRoles()
    {
        return $this->role->toArray();
    }
    /**
    * @inheritDoc
    */
    public function getSalt()
    {
    // you *may* need a real salt depending on your encoder
    // see section on salt below
    return null;
    }
    /**
    * @inheritDoc
    */
    public function eraseCredentials()
    {
    }
    /**
    * @see \Serializable::serialize()
    */
    public function serialize()
    {
        return serialize(array(
        $this->id,
        $this->username,
        $this->password,
    // see section on salt below
    // $this->salt,
    ));
    }
    /**
    * @see \Serializable::unserialize()
    */
    public function unserialize($serialized)
    {
    list (
        $this->id,
        $this->username,$this->password,
        // see section on salt below
        // $this->salt
        ) = unserialize($serialized);
    }
    public function isEqualTo(UserInterface $user)
    {
        if (!$user instanceof User) {
            return false;
        }
        if ($this->password !== $user->getPassword()){      
            return false;
        }
        if($this->hoten !== $user->getHoten()) {
            return FALSE;
        }
        if ($this->getSalt() !== $user->getSalt()) {
            return false;
        }
        if ($this->username !== $user->getUsername()) {
            return false;
        }
        return true;
    }

    /**
     * Set tenant
     *
     * @param \Acme\PermissionBundle\Entity\Tenant $tenant
     * @return User
     */
    public function setTenant(\Acme\PermissionBundle\Entity\Tenant $tenant = null)
    {
        $this->tenant = $tenant;

        return $this;
    }

    /**
     * Get tenant
     *
     * @return \Acme\PermissionBundle\Entity\Tenant 
     */
    public function getTenant()
    {
        return $this->tenant;
    }

    /**
     * Add vaitroxuly
     *
     * @param \Acme\PermissionBundle\Entity\Vaitroxuly $vaitroxuly
     * @return User
     */
    public function addVaitroxuly(\Acme\PermissionBundle\Entity\Vaitroxuly $vaitroxuly)
    {
        $this->vaitroxuly[] = $vaitroxuly;

        return $this;
    }

    /**
     * Set hoten
     *
     * @param string $hoten
     * @return User
     */
    public function setHoten($hoten)
    {
        $this->hoten = $hoten;

        return $this;
    }

    /**
     * Get hoten
     *
     * @return string 
     */
    public function getHoten()
    {
        return $this->hoten;
    }
}
