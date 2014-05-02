<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\UploadedFile;
/**
 * Dinhkemnhanhs
 *
 * @ORM\Table(name="dinhkemnhanhs", indexes={@ORM\Index(name="fk_dinhkemnhanhs_hosotthc1_idx", columns={"hosotthc"}), @ORM\Index(name="IDX_264C20294FC789D4", columns={"dinhkemtthc"})})
 * @ORM\Entity
 */
class Dinhkemnhanhs
{
    /**
     * @var string
     *
     * @ORM\Column(name="TenFileDinhKem", type="string", length=300, nullable=false)
     */
    private $tenfiledinhkem;

    /**
     * @var string
     *
     * @ORM\Column(name="PathToFile", type="string", length=300, nullable=true)
     */
    private $pathtofile;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Acme\PermissionBundle\Entity\Hosotthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Hosotthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="hosotthc", referencedColumnName="idHoSoTTHC", nullable=false)
     * })
     */
    private $hosotthc;

    /**
     * @var \Acme\PermissionBundle\Entity\Dinhkemtthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Dinhkemtthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="dinhkemtthc", referencedColumnName="idDinhKemTTHC", nullable=false)
     * })
     */
    private $dinhkemtthc;



    /**
     * Set tenfiledinhkem
     *
     * @param string $tenfiledinhkem
     * @return Dinhkemnhanhs
     */
    private $file;
    public function setFile(UploadedFile $file = null)
    {
        $this->file = $file;
    }
    /**
    * Get file.
    *
    * @return UploadedFile
    */
    public function getFile()
    {
        return $this->file;
    }
    public function setTenfiledinhkem($tenfiledinhkem)
    {
        $this->tenfiledinhkem = $tenfiledinhkem;

        return $this;
    }

    /**
     * Get tenfiledinhkem
     *
     * @return string 
     */
    public function getTenfiledinhkem()
    {
        return $this->tenfiledinhkem;
    }

    /**
     * Set pathtofile
     *
     * @param string $pathtofile
     * @return Dinhkemnhanhs
     */
    public function setPathtofile($pathtofile)
    {
        $this->pathtofile = $pathtofile;

        return $this;
    }

    /**
     * Get pathtofile
     *
     * @return string 
     */
    public function getPathtofile()
    {
        return $this->pathtofile;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set hosotthc
     *
     * @param \Acme\PermissionBundle\Entity\Hosotthc $hosotthc
     * @return Dinhkemnhanhs
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
     * Set dinhkemtthc
     *
     * @param \Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkemtthc
     * @return Dinhkemnhanhs
     */
    public function setDinhkemtthc(\Acme\PermissionBundle\Entity\Dinhkemtthc $dinhkemtthc = null)
    {
        $this->dinhkemtthc = $dinhkemtthc;

        return $this;
    }

    /**
     * Get dinhkemtthc
     *
     * @return \Acme\PermissionBundle\Entity\Dinhkemtthc 
     */
    public function getDinhkemtthc()
    {
        return $this->dinhkemtthc;
    }
    public function getAbsolutePath()
    {
        return null === $this->pathtofile
        ? null
        : $this->getUploadRootDir().'/'.$this->pathtofile;
    }
    public function getWebPath()
    {
        return null === $this->pathtofile
        ? null
        : $this->getUploadDir().'/'.$this->pathtofile;
    }
    protected function getUploadRootDir()
    {
        return __DIR__.'/../../../../web/'.$this->getUploadDir();
    }
    protected function getUploadDir()
    {
        return 'uploads/attachments';
    }
    public function upload(){

        if (null === $this->getFile()) {
        return;
        }
        if(null === $this->tenfiledinhkem){
            $this->tenfiledinhkem = $this->getFile()->getClientOriginalName();
        }
        $this->getFile()->move(
            $this->getUploadRootDir(),
            $this->getFile()->getClientOriginalName()
        );
        $this->pathtofile = $this->getUploadDir().'/'.$this->getFile()->getClientOriginalName();
        $this->file = null;
    }
}
