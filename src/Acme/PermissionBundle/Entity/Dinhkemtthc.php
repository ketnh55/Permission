<?php

namespace Acme\PermissionBundle\Entity;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\Mapping as ORM;

/**
 * Dinhkemtthc
 *
 * @ORM\Table(name="dinhkemtthc", indexes={@ORM\Index(name="IDX_4FC789D44F4C5628", columns={"Tthc"})})
 * @ORM\Entity
 */
class Dinhkemtthc
{
    /**
     * @var string
     *
     * @ORM\Column(name="TenFileDK", type="string", length=300, nullable=true)
     */
    private $tenfiledk;

    /**
     * @var string
     *
     * @ORM\Column(name="PathToFile", type="string", length=300, nullable=true)
     */
    private $pathtofile;

    /**
     * @var integer
     *
     * @ORM\Column(name="idDinhKemTTHC", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddinhkemtthc;

    /**
     * @var \Acme\PermissionBundle\Entity\Tthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tthc",cascade={"persist"})
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="Tthc", referencedColumnName="idTTHC",nullable=false)
     * })
     */
    private $tthc;
    /**
    * @var Symfony\Component\HttpFoundation\File\UploadedFile    
    */
   private $file;



    /**
     * Set tenfiledk
     *
     * @param string $tenfiledk
     * @return Dinhkemtthc
     */
    public function setTenfiledk($tenfiledk)
    {
        $this->tenfiledk = $tenfiledk;

        return $this;
    }

    /**
     * Get tenfiledk
     *
     * @return string 
     */
    public function getTenfiledk()
    {
        return $this->tenfiledk;
    }

    /**
     * Set pathtofile
     *
     * @param string $pathtofile
     * @return Dinhkemtthc
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
     * Get iddinhkemtthc
     *
     * @return integer 
     */
    public function getIddinhkemtthc()
    {
        return $this->iddinhkemtthc;
    }

    /**
     * Set tthc
     *
     * @param \Acme\PermissionBundle\Entity\Tthc $tthc
     * @return Dinhkemtthc
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
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
        return;
        }
        $this->getFile()->move(
            $this->getUploadRootDir(),
            $this->getFile()->getClientOriginalName()
        );
        $this->pathtofile = $this->getUploadDir().'/'.$this->getFile()->getClientOriginalName();
        $this->file = null;
    }

}
