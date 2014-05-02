<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Vaitroxuly
 *
 * @ORM\Table(name="vaitroxuly", indexes={@ORM\Index(name="fk_Vaitroxuly_User1_idx", columns={"User"}), @ORM\Index(name="fk_Vaitroxuly_Vaitro1_idx", columns={"Vaitro"}), @ORM\Index(name="fk_Vaitroxuly_HoSoTTHC1_idx", columns={"HoSoTTHC"})})
 * @ORM\Entity
 */
class Vaitroxuly
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Acme\PermissionBundle\Entity\Hosotthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Hosotthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="HoSoTTHC", referencedColumnName="idHoSoTTHC")
     * })
     */
    private $hosotthc;

    /**
     * @var \Acme\PermissionBundle\Entity\Vaitro
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Vaitro")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Vaitro", referencedColumnName="id")
     * })
     */
    private $vaitro;

    /**
     * @var \Acme\PermissionBundle\Entity\User
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="User", referencedColumnName="id")
     * })
     */
    private $user;



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
     * Set hosotthc
     *
     * @param \Acme\PermissionBundle\Entity\Hosotthc $hosotthc
     * @return Vaitroxuly
     */
    public function setHosotthc(\Acme\PermissionBundle\Entity\Hosotthc $hosotthc = null)
    {
        $this->hosotthc = $hosotthc;

        return $this;
    }

    /**
     * Get hosotthc
     *
     * @return \Acme\PermissionBundle\Entity\Hosotthc 
     */
    public function getHosotthc()
    {
        return $this->hosotthc;
    }

    /**
     * Set vaitro
     *
     * @param \Acme\PermissionBundle\Entity\Vaitro $vaitro
     * @return Vaitroxuly
     */
    public function setVaitro(\Acme\PermissionBundle\Entity\Vaitro $vaitro = null)
    {
        $this->vaitro = $vaitro;

        return $this;
    }

    /**
     * Get vaitro
     *
     * @return \Acme\PermissionBundle\Entity\Vaitro 
     */
    public function getVaitro()
    {
        return $this->vaitro;
    }

    /**
     * Set user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     * @return Vaitroxuly
     */
    public function setUser(\Acme\PermissionBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \Acme\PermissionBundle\Entity\User 
     */
    public function getUser()
    {
        return $this->user;
    }
}
