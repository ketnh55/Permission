<?php

namespace Acme\PermissionBundle\Entity;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\Mapping as ORM;

/**
 * Thontincanhan
 *
 * @ORM\Table(name="thontincanhan")
 * @ORM\Entity
 */
class Thontincanhan {

    /**
     * @var string
     *
     * @ORM\Column(name="pathtoimage", type="string", length=100, nullable=true)
     */
    private $pathtoimage;

    /**
     * @var string
     *
     * @ORM\Column(name="quequan", type="string", length=45, nullable=true)
     */
    private $quequan;

    /**
     * @var string
     *
     * @ORM\Column(name="noiohientai", type="string", length=45, nullable=true)
     */
    private $noiohientai;

    /**
     * @var string
     *
     * @ORM\Column(name="CMTND", type="string", length=45, nullable=true)
     */
    private $cmtnd;
    /**
     * @var string
     *
     * @ORM\Column(name="noicapcmt", type="string", length=45, nullable=true)
     */
    private $noicapcmt;

    /**
     * @var string
     *
     * @ORM\Column(name="SDT", type="string", length=45, nullable=true)
     */
    private $sdt;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=45, nullable=true)
     */
    private $email;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="ngaysinh", type="date", nullable=true)
     */
    private $ngaysinh;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;
    private $file;

//    public function __construct() {
//        $this->file = new UploadedFile($this->pathtoimage,  'xxx');
//    }
    public function getNameFile() {
        return $this->file->getClientOriginalName();
    }

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
     * Set pathtoimage
     *
     * @param string $username
     * @return User
     */
    public function setPathtoimage($pathtoimage) {
        $this->pathtoimage = $pathtoimage;

        return $this;
    }

    /**
     * Get pathtoimage
     *
     * @return string 
     */
    public function getPathtoimage() {
        return $this->pathtoimage;
    }

    /**
     * Set quequan
     *
     * @param string $quequan
     * @return Thontincanhan
     */
    public function setQuequan($quequan) {
        $this->quequan = $quequan;

        return $this;
    }

    /**
     * Get quequan
     *
     * @return string 
     */
    public function getQuequan() {
        return $this->quequan;
    }

    /**
     * Set cmtnd
     *
     * @param string $cmtnd
     * @return Thontincanhan
     */
    public function setCmtnd($cmtnd) {
        $this->cmtnd = $cmtnd;

        return $this;
    }

    /**
     * Get cmtnd
     *
     * @return string 
     */
    public function getCmtnd() {
        return $this->cmtnd;
    }

    /**
     * Set sdt
     *
     * @param string $sdt
     * @return Thontincanhan
     */
    public function setSdt($sdt) {
        $this->sdt = $sdt;

        return $this;
    }

    /**
     * Get sdt
     *
     * @return string 
     */
    public function getSdt() {
        return $this->sdt;
    }

    /**
     * Set ngaysinh
     *
     * @param \DateTime $ngaysinh
     * @return Thontincanhan
     */
    public function setNgaysinh($ngaysinh) {
        $this->ngaysinh = $ngaysinh;

        return $this;
    }

    /**
     * Get ngaysinh
     *
     * @return \DateTime 
     */
    public function getNgaysinh() {
        return $this->ngaysinh;
    }

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId() {
        return $this->id;
    }

    public function getAbsolutePath() {
        return null === $this->pathtoimage ? null : $this->getUploadRootDir() . '/' . $this->pathtoimage;
    }

    public function getWebPath() {
        return null === $this->pathtoimage ? null : $this->getUploadDir() . '/' . $this->pathtoimage;
    }

    protected function getUploadRootDir() {
        return __DIR__ . '/../../../../web/' . $this->getUploadDir();
    }

    protected function getUploadDir() {
        return 'uploads/avatar';
    }

    public function upload() {
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
            return;
        }
        $this->getFile()->move(
                $this->getUploadRootDir(), $this->getFile()->getClientOriginalName()
        );
        $this->pathtoimage = $this->getUploadDir() . '/' . $this->getFile()->getClientOriginalName();
        $this->file = null;
    }

    /**
     * Set email
     *
     * @param string $email
     * @return Thontincanhan
     */
    public function setEmail($email) {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email
     *
     * @return string 
     */
    public function getEmail() {
        return $this->email;
    }

    /**
     * Set noiohientai
     *
     * @param string $noiohientai
     * @return Thontincanhan
     */
    public function setNoiohientai($noiohientai) {
        $this->noiohientai = $noiohientai;

        return $this;
    }

    /**
     * Get noiohientai
     *
     * @return string 
     */
    public function getNoiohientai() {
        return $this->noiohientai;
    }


    /**
     * Set noicapcmt
     *
     * @param string $noicapcmt
     * @return Thontincanhan
     */
    public function setNoicapcmt($noicapcmt)
    {
        $this->noicapcmt = $noicapcmt;

        return $this;
    }

    /**
     * Get noicapcmt
     *
     * @return string 
     */
    public function getNoicapcmt()
    {
        return $this->noicapcmt;
    }
}
