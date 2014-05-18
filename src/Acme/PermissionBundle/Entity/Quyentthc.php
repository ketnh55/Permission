<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Quyentthc
 *
 * @ORM\Table(name="quyentthc", indexes={@ORM\Index(name="fk_QuyenTTHC_User1_idx", columns={"User"}), @ORM\Index(name="fk_QuyenTTHC_TTHC1_idx", columns={"TTHC"}), @ORM\Index(name="fk_QuyenTTHC_Quyenhan1_idx", columns={"Quyenhan"})})
 * @ORM\Entity
 */
class Quyentthc {

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
     * @var \Acme\PermissionBundle\Entity\Quyenhan
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Quyenhan")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Quyenhan", referencedColumnName="id")
     * })
     */
    private $quyenhan;

    /**
     * @var \Acme\PermissionBundle\Entity\Tthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="TTHC", referencedColumnName="idTTHC")
     * })
     */
    private $tthc;

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
     * Set mota
     *
     * @param string $mota
     * @return Quyentthc
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
     * Set quyenhan
     *
     * @param \Acme\PermissionBundle\Entity\Quyenhan $quyenhan
     * @return Quyentthc
     */
    public function setQuyenhan(\Acme\PermissionBundle\Entity\Quyenhan $quyenhan = null) {
        $this->quyenhan = $quyenhan;

        return $this;
    }

    /**
     * Get quyenhan
     *
     * @return \Acme\PermissionBundle\Entity\Quyenhan 
     */
    public function getQuyenhan() {
        return $this->quyenhan;
    }

    /**
     * Set tthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $tthc
     * @return Quyentthc
     */
    public function setTthc(\Acme\PermissionBundle\Entity\Tthc $tthc = null) {
        $this->tthc = $tthc;

        return $this;
    }

    /**
     * Get tthc
     *
     * @return \Acme\PermissionBundle\Entity\Tthc 
     */
    public function getTthc() {
        return $this->tthc;
    }

    /**
     * Set user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     * @return Quyentthc
     */
    public function setUser(\Acme\PermissionBundle\Entity\User $user = null) {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \Acme\PermissionBundle\Entity\User 
     */
    public function getUser() {
        return $this->user;
    }

}
