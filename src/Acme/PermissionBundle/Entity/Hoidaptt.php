<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Hoidaptt
 *
 * @ORM\Table(name="hoidaptt", indexes={@ORM\Index(name="FK_HoiDapTT_DichVu_idx", columns={"TTHC"}), @ORM\Index(name="FK_HoiDapTT_CongDan_idx", columns={"CongDan"})})
 * @ORM\Entity
 */
class Hoidaptt {

    /**
     * @var string
     *
     * @ORM\Column(name="CauHoi", type="text", nullable=false)
     */
    private $cauhoi;

    /**
     * @var string
     *
     * @ORM\Column(name="CauTraLoi", type="text", nullable=true)
     */
    private $cautraloi;

    /**
     * @var boolean
     *
     * @ORM\Column(name="isHide", type="boolean", nullable=false)
     */
    private $ishide;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="thoigianhoi", type="date", nullable=false)
     */
    private $thoigianhoi;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="thoigiantraloi", type="date", nullable=true)
     */
    private $thoigiantraloi;

    /**
     * @var integer
     *
     * @ORM\Column(name="idHoiDapTT", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idhoidaptt;

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
     *   @ORM\JoinColumn(name="CongDan", referencedColumnName="idCongDan")
     * })
     */
    private $congdan;

    /**
     * Set cauhoi
     *
     * @param string $cauhoi
     * @return Hoidaptt
     */
    public function setCauhoi($cauhoi) {
        $this->cauhoi = $cauhoi;

        return $this;
    }

    /**
     * Get cauhoi
     *
     * @return string 
     */
    public function getCauhoi() {
        return $this->cauhoi;
    }

    /**
     * Set cautraloi
     *
     * @param string $cautraloi
     * @return Hoidaptt
     */
    public function setCautraloi($cautraloi) {
        $this->cautraloi = $cautraloi;

        return $this;
    }

    /**
     * Get cautraloi
     *
     * @return string 
     */
    public function getCautraloi() {
        return $this->cautraloi;
    }

    /**
     * Set ishide
     *
     * @param boolean $ishide
     * @return Hoidaptt
     */
    public function setIshide($ishide) {
        $this->ishide = $ishide;

        return $this;
    }

    /**
     * Get ishide
     *
     * @return boolean 
     */
    public function getIshide() {
        return $this->ishide;
    }

    /**
     * Set thoigianhoi
     *
     * @param \DateTime $thoigianhoi
     * @return Hoidaptt
     */
    public function setThoigianhoi($thoigianhoi) {
        $this->thoigianhoi = $thoigianhoi;

        return $this;
    }

    /**
     * Get thoigianhoi
     *
     * @return \DateTime 
     */
    public function getThoigianhoi() {
        return $this->thoigianhoi;
    }

    /**
     * Set thoigiantraloi
     *
     * @param \DateTime $thoigiantraloi
     * @return Hoidaptt
     */
    public function setThoigiantraloi($thoigiantraloi) {
        $this->thoigiantraloi = $thoigiantraloi;

        return $this;
    }

    /**
     * Get thoigiantraloi
     *
     * @return \DateTime 
     */
    public function getThoigiantraloi() {
        return $this->thoigiantraloi;
    }

    /**
     * Get idhoidaptt
     *
     * @return integer 
     */
    public function getIdhoidaptt() {
        return $this->idhoidaptt;
    }

    /**
     * Set tthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $tthc
     * @return Hoidaptt
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
     * Set congdan
     *
     * @param \Acme\PermissionBundle\Entity\Congdan $congdan
     * @return Hoidaptt
     */
    public function setCongdan(\Acme\PermissionBundle\Entity\Congdan $congdan = null) {
        $this->congdan = $congdan;

        return $this;
    }

    /**
     * Get congdan
     *
     * @return \Acme\PermissionBundle\Entity\Congdan 
     */
    public function getCongdan() {
        return $this->congdan;
    }

}
