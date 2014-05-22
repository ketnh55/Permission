<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use \Doctrine\Common\Collections\ArrayCollection;

/**
 * Tthc
 *
 * @ORM\Table(name="tthc", indexes={@ORM\Index(name="FK_TTHC_DichVu_idx", columns={"LinhVuc"}), @ORM\Index(name="FK_TTHC_DVThuLy_idx", columns={"DonViThuLy"})})
 * @ORM\Entity
 */
class Tthc {

    /**
     * @var string
     *
     * @ORM\Column(name="NameTTHC", type="string", length=45, nullable=false)
     */
    private $nametthc;

    /**
     * @var string
     *
     * @ORM\Column(name="NoiDungThucHien", type="string", length=255, nullable=true)
     */
    private $noidungthuchien;

    /**
     * @var string
     *
     * @ORM\Column(name="GiayToHoSo", type="string", length=45, nullable=true)
     */
    private $giaytohoso;

    /**
     * @var string
     *
     * @ORM\Column(name="ThoiGianGiaiQuyet", type="string", length=45, nullable=true)
     */
    private $thoigiangiaiquyet;

    /**
     * @var boolean
     *
     * @ORM\Column(name="IsHide", type="boolean", nullable=true)
     */
    private $ishide;

    /**
     * @var integer
     *
     * @ORM\Column(name="idTTHC", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtthc;

    /**
     * @var \Acme\PermissionBundle\Entity\Linhvuc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Linhvuc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="LinhVuc", referencedColumnName="idLinhVuc", nullable=false)
     * })
     */
    private $linhvuc;

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
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Vanbanlienquan", mappedBy="tthc", cascade={"remove"})
     */
    private $vanbanlienquan;

    /**
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Dinhkemtthc", mappedBy="tthc", cascade={"remove"})
     */
    private $dinhkem;

    /**
     * @var \Doctrine\Common\Collections\Collection
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Quyentthc", mappedBy="tthc")
     */
    private $quyentthc;

    /**
     * @var \Doctrine\Common\Collections\Collection
     * @ORM\OneToMany(targetEntity="Acme\PermissionBundle\Entity\Hoidaptt", mappedBy="tthc")
     */
    private $hoidaptt;

    public function __construct() {
        $this->quyentthc = new ArrayCollection();
        $this->hoidaptt = new ArrayCollection();
        $this->vanbanlienquan = new ArrayCollection();
        $this->dinhkem = new ArrayCollection();
    }

    /**
     * Set nametthc
     *
     * @param string $nametthc
     * @return Tthc
     */
    public function setNametthc($nametthc) {
        $this->nametthc = $nametthc;

        return $this;
    }

    /**
     * Get nametthc
     *
     * @return string 
     */
    public function getNametthc() {
        return $this->nametthc;
    }

    /**
     * Set noidungthuchien
     *
     * @param string $noidungthuchien
     * @return Tthc
     */
    public function setNoidungthuchien($noidungthuchien) {
        $this->noidungthuchien = $noidungthuchien;

        return $this;
    }

    /**
     * Get noidungthuchien
     *
     * @return string 
     */
    public function getNoidungthuchien() {
        return $this->noidungthuchien;
    }

    /**
     * Set giaytohoso
     *
     * @param string $giaytohoso
     * @return Tthc
     */
    public function setGiaytohoso($giaytohoso) {
        $this->giaytohoso = $giaytohoso;

        return $this;
    }

    /**
     * Get giaytohoso
     *
     * @return string 
     */
    public function getGiaytohoso() {
        return $this->giaytohoso;
    }

    /**
     * Set thoigiangiaiquyet
     *
     * @param string $thoigiangiaiquyet
     * @return Tthc
     */
    public function setThoigiangiaiquyet($thoigiangiaiquyet) {
        $this->thoigiangiaiquyet = $thoigiangiaiquyet;

        return $this;
    }

    /**
     * Get thoigiangiaiquyet
     *
     * @return string 
     */
    public function getThoigiangiaiquyet() {
        return $this->thoigiangiaiquyet;
    }

    /**
     * Set ishide
     *
     * @param boolean $ishide
     * @return Tthc
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
     * Get idtthc
     *
     * @return integer 
     */
    public function getIdtthc() {
        return $this->idtthc;
    }

    /**
     * Set linhvuc
     *
     * @param \Acme\PermissionBundle\Entity\Linhvuc $linhvuc
     * @return Tthc
     */
    public function setLinhvuc(\Acme\PermissionBundle\Entity\Linhvuc $linhvuc = null) {
        $this->linhvuc = $linhvuc;

        return $this;
    }

    /**
     * Get linhvuc
     *
     * @return \Acme\PermissionBundle\Entity\Linhvuc 
     */
    public function getLinhvuc() {
        return $this->linhvuc;
    }

    /**
     * Set donvithuly
     *
     * @param \Acme\PermissionBundle\Entity\Donvithuly $donvithuly
     * @return Tthc
     */
    public function setDonvithuly(\Acme\PermissionBundle\Entity\Donvithuly $donvithuly = null) {
        $this->donvithuly = $donvithuly;

        return $this;
    }

    /**
     * Get donvithuly
     *
     * @return \Acme\PermissionBundle\Entity\Donvithuly 
     */
    public function getDonvithuly() {
        return $this->donvithuly;
    }

    /**
     * Add vanbanlienquan
     *
     * @param \Acme\PermissionBundle\Entity\Vanbanlienquan $vanbanlienquan
     * @return Tthc
     */
    public function addVanbanlienquan(\Acme\PermissionBundle\Entity\Vanbanlienquan $vanbanlienquan) {
        $this->vanbanlienquan[] = $vanbanlienquan;

        return $this;
    }

    /**
     * Remove vanbanlienquan
     *
     * @param \Acme\PermissionBundle\Entity\Vanbanlienquan $vanbanlienquan
     */
    public function removeVanbanlienquan(\Acme\PermissionBundle\Entity\Vanbanlienquan $vanbanlienquan) {
        $this->vanbanlienquan->removeElement($vanbanlienquan);
    }

    /**
     * Get vanbanlienquan
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getVanbanlienquan() {
        return $this->vanbanlienquan;
    }

    /**
     * Add dinhkem
     *
     * @param \Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkem
     * @return Tthc
     */
    public function addDinhkem(\Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkem) {
        $this->dinhkem[] = $dinhkem;

        return $this;
    }

    /**
     * Remove dinhkem
     *
     * @param \Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkem
     */
    public function removeDinhkem(\Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkem) {
        $this->dinhkem->removeElement($dinhkem);
    }

    /**
     * Get dinhkem
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getDinhkem() {
        return $this->dinhkem;
    }

    /**
     * Add quyentthc
     *
     * @param \Acme\PermissionBundle\Entity\Quyentthc $quyentthc
     * @return Tthc
     */
    public function addQuyentthc(\Acme\PermissionBundle\Entity\Quyentthc $quyentthc) {
        $this->quyentthc[] = $quyentthc;

        return $this;
    }

    /**
     * Remove quyentthc
     *
     * @param \Acme\PermissionBundle\Entity\Quyentthc $quyentthc
     */
    public function removeQuyentthc(\Acme\PermissionBundle\Entity\Quyentthc $quyentthc) {
        $this->quyentthc->removeElement($quyentthc);
    }

    /**
     * Get quyentthc
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getQuyentthc() {
        return $this->quyentthc;
    }

    public function setHoidaptt($hoidaptt) {
        $this->hoidaptt = $hoidaptt;
    }

    /**
     * Add hoidaptt
     *
     * @param \Acme\PermissionBundle\Entity\Hoidaptt $hoidaptt
     * @return Tthc
     */
    public function addHoidaptt(\Acme\PermissionBundle\Entity\Hoidaptt $hoidaptt) {
        $this->hoidaptt[] = $hoidaptt;

        return $this;
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
     * Get hoidaptt
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getHoidaptt() {
        return $this->hoidaptt;
    }

}
