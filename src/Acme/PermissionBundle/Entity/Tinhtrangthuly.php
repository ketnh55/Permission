<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tinhtrangthuly
 *
 * @ORM\Table(name="tinhtrangthuly", indexes={@ORM\Index(name="FK_TTTL_ChuyenVienTL_idx", columns={"ChuyenVienThuLy"})})
 * @ORM\Entity
 */
class Tinhtrangthuly
{
    /**
     * @var string
     *
     * @ORM\Column(name="TinhTrangThuLy", type="string", length=45, nullable=false)
     */
    private $tinhtrangthuly;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="Time", type="datetime", nullable=false)
     */
    private $time;

    /**
     * @var integer
     *
     * @ORM\Column(name="ThuTuThuLy", type="integer", nullable=true)
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $thututhuly;

    /**
     * @var integer
     *
     * @ORM\Column(name="idTinhTrangThuLy", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtinhtrangthuly;

    /**
     * @var \Acme\PermissionBundle\Entity\Chuyenvienthuly
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Chuyenvienthuly")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ChuyenVienThuLy", referencedColumnName="idChuyenVienThuLy")
     * })
     */
    private $chuyenvienthuly;



    /**
     * Set tinhtrangthuly
     *
     * @param string $tinhtrangthuly
     * @return Tinhtrangthuly
     */
    public function setTinhtrangthuly($tinhtrangthuly)
    {
        $this->tinhtrangthuly = $tinhtrangthuly;

        return $this;
    }

    /**
     * Get tinhtrangthuly
     *
     * @return string 
     */
    public function getTinhtrangthuly()
    {
        return $this->tinhtrangthuly;
    }

    /**
     * Set time
     *
     * @param \DateTime $time
     * @return Tinhtrangthuly
     */
    public function setTime($time)
    {
        $this->time = $time;

        return $this;
    }

    /**
     * Get time
     *
     * @return \DateTime 
     */
    public function getTime()
    {
        return $this->time;
    }

    /**
     * Set thututhuly
     *
     * @param integer $thututhuly
     * @return Tinhtrangthuly
     */
    public function setThututhuly($thututhuly)
    {
        $this->thututhuly = $thututhuly;

        return $this;
    }

    /**
     * Get thututhuly
     *
     * @return integer 
     */
    public function getThututhuly()
    {
        return $this->thututhuly;
    }

    /**
     * Get idtinhtrangthuly
     *
     * @return integer 
     */
    public function getIdtinhtrangthuly()
    {
        return $this->idtinhtrangthuly;
    }

    /**
     * Set chuyenvienthuly
     *
     * @param \Acme\PermissionBundle\Entity\Chuyenvienthuly $chuyenvienthuly
     * @return Tinhtrangthuly
     */
    public function setChuyenvienthuly(\Acme\PermissionBundle\Entity\Chuyenvienthuly $chuyenvienthuly = null)
    {
        $this->chuyenvienthuly = $chuyenvienthuly;

        return $this;
    }

    /**
     * Get chuyenvienthuly
     *
     * @return \Acme\PermissionBundle\Entity\Chuyenvienthuly 
     */
    public function getChuyenvienthuly()
    {
        return $this->chuyenvienthuly;
    }
}
