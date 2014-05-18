<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Trangthaihoso
 *
 * @ORM\Table(name="trangthaihoso")
 * @ORM\Entity
 */
class Trangthaihoso {

    /**
     * @var string
     *
     * @ORM\Column(name="trangthai", type="string", length=45, nullable=true)
     */
    private $trangthai;

    /**
     * @var integer
     *
     * @ORM\Column(name="idTrangthaihoso", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtrangthaihoso;

    /**
     * Set trangthai
     *
     * @param string $trangthai
     * @return Trangthaihoso
     */
    public function setTrangthai($trangthai) {
        $this->trangthai = $trangthai;

        return $this;
    }

    /**
     * Get trangthai
     *
     * @return string 
     */
    public function getTrangthai() {
        return $this->trangthai;
    }

    /**
     * Get idtrangthaihoso
     *
     * @return integer 
     */
    public function getIdtrangthaihoso() {
        return $this->idtrangthaihoso;
    }

}
