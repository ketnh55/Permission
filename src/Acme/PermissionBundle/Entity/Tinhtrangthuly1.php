<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Tinhtrangthuly
 *
 * @ORM\Table(name="tinhtrangthuly", indexes={@ORM\Index(name="FK_TTTL_Chitrachnhiem_idx", columns={"Chiutrachnhiem"}),@ORM\Index(name="FK_TTTL_Tiepnhan_idx", columns={"Tiepnhan"}), @ORM\Index(name="fk_tinhtrangthuly_Trangthaihoso1_idx", columns={"Trangthaihoso"}), @ORM\Index(name="IDX_33CFE5E1BA4A83C4", columns={"Hosotthc"})})
 * @ORM\Entity
 */
class Tinhtrangthuly1
{
    /**
     * @var \DateTime
     *
     * @ORM\Column(name="Time", type="datetime", nullable=false)
     */
    private $time;

    /**
     * @var integer
     *
     * @ORM\Column(name="idTinhTrangThuLy", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtinhtrangthuly;

    /**
     * @var \Acme\PermissionBundle\Entity\Trangthaihoso
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Trangthaihoso")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Trangthaihoso", referencedColumnName="idTrangthaihoso")
     * })
     */
    private $trangthaihoso;

    /**
     * @var \Acme\PermissionBundle\Entity\Hosotthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Hosotthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Hosotthc", referencedColumnName="idHoSoTTHC")
     * })
     */
    private $hosotthc;

    /**
     * @var \Acme\PermissionBundle\Entity\User
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Chiutrachnhiem", referencedColumnName="id")
     * })
     */
    private $chiutrachnhiem;
    /**
     * @var \Acme\PermissionBundle\Entity\Chuyenvienthuly
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Chuyenvienthuly")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Tiepnhan", referencedColumnName="idchuyenvienthuly")
     * })
     */
    private $tiepnhan;



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
     * Get idtinhtrangthuly
     *
     * @return integer 
     */
    public function getIdtinhtrangthuly()
    {
        return $this->idtinhtrangthuly;
    }

    /**
     * Set trangthaihoso
     *
     * @param \Acme\PermissionBundle\Entity\Trangthaihoso $trangthaihoso
     * @return Tinhtrangthuly
     */
    public function setTrangthaihoso(\Acme\PermissionBundle\Entity\Trangthaihoso $trangthaihoso = null)
    {
        $this->trangthaihoso = $trangthaihoso;

        return $this;
    }

    /**
     * Get trangthaihoso
     *
     * @return \Acme\PermissionBundle\Entity\Trangthaihoso 
     */
    public function getTrangthaihoso()
    {
        return $this->trangthaihoso;
    }

    /**
     * Set hosotthc
     *
     * @param \Acme\PermissionBundle\Entity\Hosotthc $hosotthc
     * @return Tinhtrangthuly
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
     * Set chiutrachnhiem
     *
     * @param \Acme\PermissionBundle\Entity\User $chiutrachnhiem
     * @return Tinhtrangthuly
     */
    public function setChiutrachnhiem(\Acme\PermissionBundle\Entity\User $chiutrachnhiem = null)
    {
        $this->chiutrachnhiem = $chiutrachnhiem;

        return $this;
    }

    /**
     * Get chiutrachnhiem
     *
     * @return \Acme\PermissionBundle\Entity\User 
     */
    public function getChiutrachnhiem()
    {
        return $this->chiutrachnhiem;
    }

    /**
     * Set tiepnhan
     *
     * @param \Acme\PermissionBundle\Entity\Chuyenvienthuly $tiepnhan
     * @return Tinhtrangthuly
     */
    public function setTiepnhan(\Acme\PermissionBundle\Entity\Chuyenvienthuly $tiepnhan = null)
    {
        $this->tiepnhan = $tiepnhan;

        return $this;
    }

    /**
     * Get tiepnhan
     *
     * @return \Acme\PermissionBundle\Entity\Chuyenvienthuly 
     */
    public function getTiepnhan()
    {
        return $this->tiepnhan;
    }
}
