<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Congdan
 *
 * @ORM\Table(name="congdan")
 * @ORM\Entity
 */
class Congdan {

    /**
     * @var string
     *
     * @ORM\Column(name="pathtoimage", type="string", length=100, nullable=true)
     */
    private $pathtoimage;

    /**
     * @var string
     *
     * @ORM\Column(name="Name", type="string", length=45, nullable=false)
     */
    private $name;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="Ngaysinh", type="date", nullable=false)
     */
    private $ngaysinh;

    /**
     * @var string
     *
     * @ORM\Column(name="QueQuan", type="string", length=45, nullable=false)
     */
    private $quequan;

    /**
     * @var string
     *
     * @ORM\Column(name="SDT", type="string", length=45, nullable=false)
     */
    private $sdt;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=45, nullable=false)
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="cmtnd", type="string", length=45, nullable=false)
     */
    private $cmtnd;

    /**
     * @var string
     *
     * @ORM\Column(name="noiohientai", type="string", length=45, nullable=false)
     */
    private $noiohientai;

    /**
     * @var integer
     *
     * @ORM\Column(name="idCongDan", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idcongdan;

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
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Hoidaptt", mappedBy="congdan")
     */
    public $hoidaptt;

    public function __construct() {
        $this->hoidaptt = new \Doctrine\Common\Collections\ArrayCollection();
    }

    public function getHoidaptt() {
        return $this->hoidaptt;
    }

    public function addHoidaptt(Hoidaptt $hoidap) {
        $this->hoidaptt[] = $hoidap;
        return $this;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Congdan
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
     * Set ngaysinh
     *
     * @param \DateTime $ngaysinh
     * @return Congdan
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
     * Set quequan
     *
     * @param string $quequan
     * @return Congdan
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
     * Set sdt
     *
     * @param string $sdt
     * @return Congdan
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
     * Set email
     *
     * @param string $email
     * @return Congdan
     */
    public function setEmail($email) {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail() {
        return $this->email;
    }

    /**
     * Get idcongdan
     *
     * @return integer 
     */
    public function getIdcongdan() {
        return $this->idcongdan;
    }

    /**
     * Set username
     *
     * @param string $username
     * @return User
     */
    public function setPathtoimage($pathtoimage) {
        $this->pathtoimage = $pathtoimage;

        return $this;
    }

    /**
     * Get username
     *
     * @return string 
     */
    public function getPathtoimage() {
        return $this->pathtoimage;
    }

    /**
     * Set tenant
     *
     * @param \Acme\PermissionBundle\Entity\Tenant $tenant
     * @return Congdan
     */
    public function setTenant(\Acme\PermissionBundle\Entity\Tenant $tenant = null) {
        $this->tenant = $tenant;

        return $this;
    }

    /**
     * Get tenant
     *
     * @return \Acme\PermissionBundle\Entity\Tenant 
     */
    public function getTenant() {
        return $this->tenant;
    }

    /**
     * Remove hoidaptt
     *
     * @param \Acme\PermissionBundle\Entity\Hoidaptt $hoidaptt
     */
    public function removeHoidaptt(\Acme\PermissionBundle\Entity\Hoidaptt $hoidaptt) {
        $this->hoidaptt->removeElement($hoidaptt);
    }

    /**
     * Set cmtnd
     *
     * @param string $cmtnd
     * @return Congdan
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
     * Set noiohientai
     *
     * @param string $noiohientai
     * @return Congdan
     */
    public function setNoiohientai($noiohientai) {
        $this->noiohientai = $noiohientai;

        return $this;
    }

    /**
     * Get noiohientai
     *
     * @return string 
     */
    public function getNoiohientai() {
        return $this->noiohientai;
    }

}
