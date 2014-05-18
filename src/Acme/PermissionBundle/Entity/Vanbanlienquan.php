<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * Vanbanlienquan
 *
 * @ORM\Table(name="vanbanlienquan", indexes={@ORM\Index(name="IDX_C328B7844F4C5628", columns={"Tthc"})})
 * @ORM\Entity
 */
class Vanbanlienquan {

    /**
     * @var string
     *
     * @ORM\Column(name="TenVBLQ", type="string", length=300, nullable=true)
     */
    private $tenvblq;

    /**
     * @var string
     *
     * @ORM\Column(name="PathToVBLQ", type="string", length=300, nullable=true)
     */
    private $pathtovblq;

    /**
     * @var integer
     *
     * @ORM\Column(name="idVanBanLienQuan", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idvanbanlienquan;

    /**
     * @var \Acme\PermissionBundle\Entity\Tthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Tthc", referencedColumnName="idTTHC")
     * })
     */
    private $tthc;
    private $file;

    public function setFile(UploadedFile $file = null) {
        $this->file = $file;
    }

    /**
     * Get file.
     *
     * @return UploadedFile
     */
    public function getFile() {
        return $this->file;
    }

    /**
     * Set tenvblq
     *
     * @param string $tenvblq
     * @return Vanbanlienquan
     */
    public function setTenvblq($tenvblq) {
        $this->tenvblq = $tenvblq;

        return $this;
    }

    /**
     * Get tenvblq
     *
     * @return string 
     */
    public function getTenvblq() {
        return $this->tenvblq;
    }

    /**
     * Set pathtovblq
     *
     * @param string $pathtovblq
     * @return Vanbanlienquan
     */
    public function setPathtovblq($pathtovblq) {
        $this->pathtovblq = $pathtovblq;

        return $this;
    }

    /**
     * Get pathtovblq
     *
     * @return string 
     */
    public function getPathtovblq() {
        return $this->pathtovblq;
    }

    /**
     * Get idvanbanlienquan
     *
     * @return integer 
     */
    public function getIdvanbanlienquan() {
        return $this->idvanbanlienquan;
    }

    /**
     * Set tthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $tthc
     * @return Vanbanlienquan
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

    public function getAbsolutePath() {
        return null === $this->pathtovblq ? null : $this->getUploadRootDir() . '/' . $this->pathtovblq;
    }

    public function getWebPath() {
        return null === $this->pathtovblq ? null : $this->getUploadDir() . '/' . $this->pathtovblq;
    }

    protected function getUploadRootDir() {
        return __DIR__ . '/../../../../web/' . $this->getUploadDir();
    }

    protected function getUploadDir() {
        return 'uploads/attachments';
    }

    public function upload() {
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
            return;
        }
        $this->getFile()->move(
                $this->getUploadRootDir(), $this->getFile()->getClientOriginalName()
        );
        $this->pathtovblq = $this->getUploadDir() . '/' . $this->getFile()->getClientOriginalName();
        $this->file = null;
    }

}
