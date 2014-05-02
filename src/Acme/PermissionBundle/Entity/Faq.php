<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Faq
 *
 * @ORM\Table(name="faq", indexes={@ORM\Index(name="FK_FAQ_DichVu_idx", columns={"idTTHC"})})
 * @ORM\Entity
 */
class Faq
{
    /**
     * @var string
     *
     * @ORM\Column(name="NDCauHoi", type="string", length=45, nullable=false)
     */
    private $ndcauhoi;

    /**
     * @var string
     *
     * @ORM\Column(name="NDCauTraLoi", type="string", length=45, nullable=true)
     */
    private $ndcautraloi;

    /**
     * @var integer
     *
     * @ORM\Column(name="idFAQ", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idfaq;

    /**
     * @var \Acme\PermissionBundle\Entity\Tthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="idTTHC", referencedColumnName="idTTHC")
     * })
     */
    private $idtthc;



    /**
     * Set ndcauhoi
     *
     * @param string $ndcauhoi
     * @return Faq
     */
    public function setNdcauhoi($ndcauhoi)
    {
        $this->ndcauhoi = $ndcauhoi;

        return $this;
    }

    /**
     * Get ndcauhoi
     *
     * @return string 
     */
    public function getNdcauhoi()
    {
        return $this->ndcauhoi;
    }

    /**
     * Set ndcautraloi
     *
     * @param string $ndcautraloi
     * @return Faq
     */
    public function setNdcautraloi($ndcautraloi)
    {
        $this->ndcautraloi = $ndcautraloi;

        return $this;
    }

    /**
     * Get ndcautraloi
     *
     * @return string 
     */
    public function getNdcautraloi()
    {
        return $this->ndcautraloi;
    }

    /**
     * Get idfaq
     *
     * @return integer 
     */
    public function getIdfaq()
    {
        return $this->idfaq;
    }

    /**
     * Set idtthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $idtthc
     * @return Faq
     */
    public function setIdtthc(\Acme\PermissionBundle\Entity\Tthc $idtthc = null)
    {
        $this->idtthc = $idtthc;

        return $this;
    }

    /**
     * Get idtthc
     *
     * @return \Acme\PermissionBundle\Entity\Tthc 
     */
    public function getIdtthc()
    {
        return $this->idtthc;
    }
}
