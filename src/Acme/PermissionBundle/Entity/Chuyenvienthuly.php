<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Chuyenvienthuly
 *
 * @ORM\Table(name="chuyenvienthuly", indexes={@ORM\Index(name="FK_CanBo_DVThuLy_idx", columns={"DonViThuLy"})})
 * @ORM\Entity
 */
class Chuyenvienthuly
{
    /**
     * @var string
     *
     * @ORM\Column(name="NameCB", type="string", length=45, nullable=false)
     */
    private $namecb;
    /**
     * @var string
     *
     * @ORM\Column(name="quequan", type="string", length=45, nullable=false)
     */
    private $quequan;
    /**
     * @var string
     *
     * @ORM\Column(name="noiohientai", type="string", length=45, nullable=false)
     */
    private $noiohientai;
    /**
     * @var string
     *
     * @ORM\Column(name="CMTND", type="string", length=45, nullable=false)
     */
    private $cmtnd;
    /**
     * @var string
     *
     * @ORM\Column(name="email", type="text", length=45, nullable=false)
     */
    private $email;

    /**
     * @var string
     *
     * @ORM\Column(name="sdt", type="text", length=45, nullable=false)
     */
    private $sdt;
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="NgaySinh", type="date", nullable=false)
     */
    private $ngaysinh;

    /**
     * @var integer
     *
     * @ORM\Column(name="idChuyenVienThuLy", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idchuyenvienthuly;

    /**
     * @var \Acme\PermissionBundle\Entity\Donvithuly
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Donvithuly")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="DonViThuLy", referencedColumnName="idDonViThuLy")
     * })
     */
    private $donvithuly;



    /**
     * Set namecb
     *
     * @param string $namecb
     * @return Chuyenvienthuly
     */
    public function setNamecb($namecb)
    {
        $this->namecb = $namecb;

        return $this;
    }

    /**
     * Get namecb
     *
     * @return string 
     */
    public function getNamecb()
    {
        return $this->namecb;
    }

    /**
     * Set ngaysinh
     *
     * @param \DateTime $ngaysinh
     * @return Chuyenvienthuly
     */
    public function setNgaysinh($ngaysinh)
    {
        $this->ngaysinh = $ngaysinh;

        return $this;
    }

    /**
     * Get ngaysinh
     *
     * @return \DateTime 
     */
    public function getNgaysinh()
    {
        return $this->ngaysinh;
    }

    /**
     * Get idchuyenvienthuly
     *
     * @return integer 
     */
    public function getIdchuyenvienthuly()
    {
        return $this->idchuyenvienthuly;
    }

    /**
     * Set donvithuly
     *
     * @param \Acme\PermissionBundle\Entity\Donvithuly $donvithuly
     * @return Chuyenvienthuly
     */
    public function setDonvithuly(\Acme\PermissionBundle\Entity\Donvithuly $donvithuly = null)
    {
        $this->donvithuly = $donvithuly;

        return $this;
    }

    /**
     * Get donvithuly
     *
     * @return \Acme\PermissionBundle\Entity\Donvithuly 
     */
    public function getDonvithuly()
    {
        return $this->donvithuly;
    }

    /**
     * Set quequan
     *
     * @param string $quequan
     * @return Chuyenvienthuly
     */
    public function setQuequan($quequan)
    {
        $this->quequan = $quequan;

        return $this;
    }

    /**
     * Get quequan
     *
     * @return string 
     */
    public function getQuequan()
    {
        return $this->quequan;
    }

    /**
     * Set noiohientai
     *
     * @param string $noiohientai
     * @return Chuyenvienthuly
     */
    public function setNoiohientai($noiohientai)
    {
        $this->noiohientai = $noiohientai;

        return $this;
    }

    /**
     * Get noiohientai
     *
     * @return string 
     */
    public function getNoiohientai()
    {
        return $this->noiohientai;
    }

    /**
     * Set cmtnd
     *
     * @param string $cmtnd
     * @return Chuyenvienthuly
     */
    public function setCmtnd($cmtnd)
    {
        $this->cmtnd = $cmtnd;

        return $this;
    }

    /**
     * Get cmtnd
     *
     * @return string 
     */
    public function getCmtnd()
    {
        return $this->cmtnd;
    }

   

    /**
     * Set sdt
     *
     * @param string $sdt
     * @return Chuyenvienthuly
     */
    public function setSdt($sdt)
    {
        $this->sdt = $sdt;

        return $this;
    }

    /**
     * Get sdt
     *
     * @return string 
     */
    public function getSdt()
    {
        return $this->sdt;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Chuyenvienthuly
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail()
    {
        return $this->email;
    }
}
