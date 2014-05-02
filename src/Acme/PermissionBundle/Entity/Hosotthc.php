<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Hosotthc
 *
 * @ORM\Table(name="hosotthc", indexes={@ORM\Index(name="FK_HSTTHC_CongDan_idx", columns={"CongDan"}), @ORM\Index(name="FK_HSTTHC_TTHC_idx", columns={"TTHC"}), @ORM\Index(name="FK_HSTTHC_TTTL_idx", columns={"TinhTrangThuLy"})})
 * @ORM\Entity
 */
class Hosotthc
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="NgayNhan", type="date", nullable=false)
     */
    private $ngaynhan;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="NgayHenTra", type="date", nullable=false)
     */
    private $ngayhentra;

    /**
     * @var boolean
     *
     * @ORM\Column(name="IsSentDVTL", type="boolean", nullable=true)
     */
    private $issentdvtl;

    /**
     * @var boolean
     *
     * @ORM\Column(name="IsRecieveDVTL", type="boolean", nullable=true)
     */
    private $isrecievedvtl;

    /**
     * @var integer
     *
     * @ORM\Column(name="idHoSoTTHC", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idhosotthc;
    /**
     * @var integer
     * 
     * @ORM\Column(name="sobiennhanhoso", type="integer", nullable=false)
     */
    private $sobiennhanhoso;


    /**
     * @var \Acme\PermissionBundle\Entity\Tinhtrangthuly
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tinhtrangthuly")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="TinhTrangThuLy", referencedColumnName="idTinhTrangThuLy")
     * })
     */
    private $tinhtrangthuly;

    /**
     * @var \Acme\PermissionBundle\Entity\Tthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="TTHC", referencedColumnName="idTTHC", nullable=false)
     * })
     */
    private $tthc;
    /**
     * @var \Acme\PermissionBundle\Entity\Congdan
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Congdan")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="CongDan", referencedColumnName="idCongDan",nullable=false)
     * })
     */
    private $congdan;
    /**
    * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Dinhkemnhanhs", mappedBy="hosotthc")
    */
    public $dinhkemnhanhs;
    public function __construct()
    {
        $this->dinhkemnhanhs = new \Doctrine\Common\Collections\ArrayCollection();
    }
    public function getDinhkemnhanhs(){
            return $this->dinhkemnhanhs;
    }
     public function addDinhkemnhanhs(\Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs)
    {
        $this->dinhkemnhanhs[] = $dinhkemnhanhs;

        return $this;
    }

    /**
     * Remove user
     *
     * @param \Acme\PermissionBundle\Entity\User $user
     */
    public function removeDinhkemnhanhs(\Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs)
    {
        $this->user->removeElement($dinhkemnhanhs);
    }

    /**
     * Set ngaynhan
     *
     * @param \DateTime $ngaynhan
     * @return Hosotthc
     */
    public function setNgaynhan($ngaynhan)
    {
        $this->ngaynhan = $ngaynhan;

        return $this;
    }

    /**
     * Get ngaynhan
     *
     * @return \DateTime 
     */
    public function getNgaynhan()
    {
        return $this->ngaynhan;
    }

    /**
     * Set ngayhentra
     *
     * @param \DateTime $ngayhentra
     * @return Hosotthc
     */
    public function setNgayhentra($ngayhentra)
    {
        $this->ngayhentra = $ngayhentra;

        return $this;
    }

    /**
     * Get ngayhentra
     *
     * @return \DateTime 
     */
    public function getNgayhentra()
    {
        return $this->ngayhentra;
    }

    /**
     * Set issentdvtl
     *
     * @param boolean $issentdvtl
     * @return Hosotthc
     */
    public function setIssentdvtl($issentdvtl)
    {
        $this->issentdvtl = $issentdvtl;

        return $this;
    }

    /**
     * Get issentdvtl
     *
     * @return boolean 
     */
    public function getIssentdvtl()
    {
        return $this->issentdvtl;
    }

    /**
     * Set isrecievedvtl
     *
     * @param boolean $isrecievedvtl
     * @return Hosotthc
     */
    public function setIsrecievedvtl($isrecievedvtl)
    {
        $this->isrecievedvtl = $isrecievedvtl;

        return $this;
    }

    /**
     * Get isrecievedvtl
     *
     * @return boolean 
     */
    public function getIsrecievedvtl()
    {
        return $this->isrecievedvtl;
    }

    /**
     * Get idhosotthc
     *
     * @return integer 
     */
    public function getIdhosotthc()
    {
        return $this->idhosotthc;
    }

    /**
     * Set tinhtrangthuly
     *
     * @param \Acme\PermissionBundle\Entity\Tinhtrangthuly $tinhtrangthuly
     * @return Hosotthc
     */
    public function setTinhtrangthuly(\Acme\PermissionBundle\Entity\Tinhtrangthuly $tinhtrangthuly = null)
    {
        $this->tinhtrangthuly = $tinhtrangthuly;

        return $this;
    }

    /**
     * Get tinhtrangthuly
     *
     * @return \Acme\PermissionBundle\Entity\Tinhtrangthuly 
     */
    public function getTinhtrangthuly()
    {
        return $this->tinhtrangthuly;
    }

    /**
     * Set tthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $tthc
     * @return Hosotthc
     */
    public function setTthc(\Acme\PermissionBundle\Entity\Tthc $tthc = null)
    {
        $this->tthc = $tthc;

        return $this;
    }

    /**
     * Get tthc
     *
     * @return \Acme\PermissionBundle\Entity\Tthc 
     */
    public function getTthc()
    {
        return $this->tthc;
    }

    /**
     * Set donvithuly
     *
     * @param \Acme\PermissionBundle\Entity\Donvithuly $donvithuly
     * @return Hosotthc
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
     * Set congdan
     *
     * @param \Acme\PermissionBundle\Entity\Congdan $congdan
     * @return Hosotthc
     */
    public function setCongdan(\Acme\PermissionBundle\Entity\Congdan $congdan = null)
    {
        $this->congdan = $congdan;

        return $this;
    }

    /**
     * Get congdan
     *
     * @return \Acme\PermissionBundle\Entity\Congdan 
     */
    public function getCongdan()
    {
        return $this->congdan;
    }

    /**
     * Set sobiennhanhoso
     *
     * @param integer $sobiennhanhoso
     * @return Hosotthc
     */
    public function setSobiennhanhoso($sobiennhanhoso)
    {
        $this->sobiennhanhoso = $sobiennhanhoso;

        return $this;
    }

    /**
     * Get sobiennhanhoso
     *
     * @return integer 
     */
    public function getSobiennhanhoso()
    {
        return $this->sobiennhanhoso;
    }

    /**
     * Add dinhkemnhanhs
     *
     * @param \Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs
     * @return Hosotthc
     */
    public function addDinhkemnhanh(\Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs)
    {
        $this->dinhkemnhanhs[] = $dinhkemnhanhs;

        return $this;
    }

    /**
     * Remove dinhkemnhanhs
     *
     * @param \Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs
     */
    public function removeDinhkemnhanh(\Acme\PermissionBundle\Entity\Dinhkemnhanhs $dinhkemnhanhs)
    {
        $this->dinhkemnhanhs->removeElement($dinhkemnhanhs);
    }
}
