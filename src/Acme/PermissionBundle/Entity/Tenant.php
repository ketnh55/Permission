<?php

namespace Acme\PermissionBundle\Entity;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\Mapping as ORM;

/**
 * Tenant
 *
 * @ORM\Table(name="tenant", uniqueConstraints={@ORM\UniqueConstraint(name="UNIQ_4E59C462A7A91E0B", columns={"domain"})})
 * @ORM\Entity
 */
class Tenant {

    /**
     * @var string
     *
     * @ORM\Column(name="hoten", type="string", length=45, nullable=true)
     */
    private $hoten;

    /**
     * @var string
     *
     * @ORM\Column(name="quequan", type="string", length=45, nullable=true)
     */
    private $quequan;

    /**
     * @var string
     *
     * @ORM\Column(name="CMTND", type="string", length=45, nullable=true)
     */
    private $cmtnd;

    /**
     * @var string
     *
     * @ORM\Column(name="SDT", type="string", length=45, nullable=true)
     */
    private $sdt;

    /**
     * @var string
     *
     * @ORM\Column(name="tendonvi", type="string", length=45, nullable=false)
     */
    private $tendonvi;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ngaysinh", type="date", nullable=true)
     */
    private $ngaysinh;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="domain", type="string", length=45, nullable=false, unique=true)
     */
    private $domain;

    /**
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\User", mappedBy="tenant", cascade={"remove"})
     */
    public $user;

    /**
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Congdan", mappedBy="tenant", cascade={"remove"})
     */
    public $congdan;

    /**
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Linhvuc", mappedBy="tenant", cascade={"remove"})
     */
    public $linhvuc;    

    /**
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Donvithuly", mappedBy="tenant", cascade="remove")
     */
    public $donvithuly;

    /**
     * Set hoten
     *
     * @param string $hoten
     * @return Tenant
     */
    public function setHoten($hoten) {
        $this->hoten = $hoten;

        return $this;
    }

    /**
     * Get hoten
     *
     * @return string 
     */
    public function getHoten() {
        return $this->hoten;
    }

    /**
     * Set quequan
     *
     * @param string $quequan
     * @return Tenant
     */
    public function setQuequan($quequan) {
        $this->quequan = $quequan;

        return $this;
    }

    /**
     * Get quequan
     *
     * @return string 
     */
    public function getQuequan() {
        return $this->quequan;
    }

    /**
     * Set cmtnd
     *
     * @param string $cmtnd
     * @return Tenant
     */
    public function setCmtnd($cmtnd) {
        $this->cmtnd = $cmtnd;

        return $this;
    }

    /**
     * Get cmtnd
     *
     * @return string 
     */
    public function getCmtnd() {
        return $this->cmtnd;
    }

    /**
     * Set sdt
     *
     * @param string $sdt
     * @return Tenant
     */
    public function setSdt($sdt) {
        $this->sdt = $sdt;

        return $this;
    }

    /**
     * Get sdt
     *
     * @return string 
     */
    public function getSdt() {
        return $this->sdt;
    }

    /**
     * Set ngaysinh
     *
     * @param \DateTime $ngaysinh
     * @return Tenant
     */
    public function setNgaysinh($ngaysinh) {
        $this->ngaysinh = $ngaysinh;

        return $this;
    }

    /**
     * Get ngaysinh
     *
     * @return \DateTime 
     */
    public function getNgaysinh() {
        return $this->ngaysinh;
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
     * Set domain
     *
     * @param string $domain
     * @return Tenant
     */
    public function setDomain($domain) {
        $this->domain = $domain;

        return $this;
    }

    /**
     * Get domain
     *
     * @return string 
     */
    public function getDomain() {
        return $this->domain;
    }

    /**
     * Constructor
     */
    public function __construct() {
        $this->user = new \Doctrine\Common\Collections\ArrayCollection();
        $this->congdan = new \Doctrine\Common\Collections\ArrayCollection();
        $this->linhvuc = new \Doctrine\Common\Collections\ArrayCollection();
        $this->quyenhan = new \Doctrine\Common\Collections\ArrayCollection();
        $this->donvithuly = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     * @return Tenant
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
     * Add congdan
     *
     * @param \Acme\PermissionBundle\Entity\Congdan $congdan
     * @return Tenant
     */
    public function addCongdan(\Acme\PermissionBundle\Entity\Congdan $congdan) {
        $this->congdan[] = $congdan;

        return $this;
    }

    /**
     * Remove congdan
     *
     * @param \Acme\PermissionBundle\Entity\Congdan $congdan
     */
    public function removeCongdan(\Acme\PermissionBundle\Entity\Congdan $congdan) {
        $this->congdan->removeElement($congdan);
    }

    /**
     * Get congdan
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCongdan() {
        return $this->congdan;
    }

    /**
     * Add linhvuc
     *
     * @param \Acme\PermissionBundle\Entity\Linhvuc $linhvuc
     * @return Tenant
     */
    public function addLinhvuc(\Acme\PermissionBundle\Entity\Linhvuc $linhvuc) {
        $this->linhvuc[] = $linhvuc;

        return $this;
    }

    /**
     * Remove linhvuc
     *
     * @param \Acme\PermissionBundle\Entity\Linhvuc $linhvuc
     */
    public function removeLinhvuc(\Acme\PermissionBundle\Entity\Linhvuc $linhvuc) {
        $this->linhvuc->removeElement($linhvuc);
    }

    /**
     * Get linhvuc
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getLinhvuc() {
        return $this->linhvuc;
    }

    /**
     * Add quyenhan
     *
     * @param \Acme\PermissionBundle\Entity\Quyenhan $quyenhan
     * @return Tenant
     */
    public function addQuyenhan(\Acme\PermissionBundle\Entity\Quyenhan $quyenhan) {
        $this->quyenhan[] = $quyenhan;

        return $this;
    }

    /**
     * Remove quyenhan
     *
     * @param \Acme\PermissionBundle\Entity\Quyenhan $quyenhan
     */
    public function removeQuyenhan(\Acme\PermissionBundle\Entity\Quyenhan $quyenhan) {
        $this->quyenhan->removeElement($quyenhan);
    }

    /**
     * Get quyenhan
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getQuyenhan() {
        return $this->quyenhan;
    }

    /**
     * Add donvithuly
     *
     * @param \Acme\PermissionBundle\Entity\Donvithuly $donvithuly
     * @return Tenant
     */
    public function addDonvithuly(\Acme\PermissionBundle\Entity\Donvithuly $donvithuly) {
        $this->donvithuly[] = $donvithuly;

        return $this;
    }

    /**
     * Remove donvithuly
     *
     * @param \Acme\PermissionBundle\Entity\Donvithuly $donvithuly
     */
    public function removeDonvithuly(\Acme\PermissionBundle\Entity\Donvithuly $donvithuly) {
        $this->donvithuly->removeElement($donvithuly);
    }

    /**
     * Get donvithuly
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getDonvithuly() {
        return $this->donvithuly;
    }

    /**
     * Set tendonvi
     *
     * @param string $tendonvi
     * @return Tenant
     */
    public function setTendonvi($tendonvi) {
        $this->tendonvi = $tendonvi;

        return $this;
    }

    /**
     * Get tendonvi
     *
     * @return string 
     */
    public function getTendonvi() {
        return $this->tendonvi;
    }

}
