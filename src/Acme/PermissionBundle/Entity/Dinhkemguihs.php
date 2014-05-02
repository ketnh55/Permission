<?php

namespace Acme\PermissionBundle\Entity;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\Mapping as ORM;

/**
 * Dinhkemguihs
 *
 * @ORM\Table(name="dinhkemguihs", indexes={@ORM\Index(name="fk_dinhkemguihs_hosotthc1_idx", columns={"hosotthc"})})
 * @ORM\Entity
 */
class Dinhkemguihs
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
     * @ORM\Column(name="PathToFile", type="string", length=300, nullable=false)
     */
    private $pathtofile;

    /**
     * @var integer
     *
     * @ORM\Column(name="idDinhKemGuiHS", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddinhkemguihs;

    /**
     * @var \Acme\PermissionBundle\Entity\Hosotthc
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Hosotthc")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="hosotthc", referencedColumnName="idHoSoTTHC", nullable=false)
     * })
     */
    private $hosotthchosotthc;    
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



    /**
     * Set tenfiledinhkem
     *
     * @param string $tenfiledinhkem
     * @return Dinhkemguihs
     */
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
     * @return Dinhkemguihs
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
     * Get iddinhkemguihs
     *
     * @return integer 
     */
    public function getIddinhkemguihs()
    {
        return $this->iddinhkemguihs;
    }

    /**
     * Set hosotthchosotthc
     *
     * @param \Acme\PermissionBundle\Entity\Hosotthc $hosotthchosotthc
     * @return Dinhkemguihs
     */
    public function setHosotthchosotthc(\Acme\PermissionBundle\Entity\Hosotthc $hosotthchosotthc = null)
    {
        $this->hosotthchosotthc = $hosotthchosotthc;

        return $this;
    }

    /**
     * Get hosotthchosotthc
     *
     * @return \Acme\PermissionBundle\Entity\Hosotthc 
     */
    public function getHosotthchosotthc()
    {
        return $this->hosotthchosotthc;
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
