<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Linhvuc
 *
 * @ORM\Table(name="linhvuc")
 * @ORM\Entity
 */
class Linhvuc
{
    /**
     * @var string
     *
     * @ORM\Column(name="NameDV", type="string", length=45, nullable=false)
     */
    private $namedv;

    /**
     * @var string
     *
     * @ORM\Column(name="MoTaLinhVuc", type="string", length=255, nullable=false)
     */
    private $motalinhvuc;

    /**
     * @var integer
     *
     * @ORM\Column(name="idLinhVuc", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idlinhvuc;
    /**
     * @var \Acme\PermissionBundle\Entity\Tenant
     *
     * @ORM\ManyToOne(targetEntity="Acme\PermissionBundle\Entity\Tenant")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tenant", referencedColumnName="id", nullable=false)
     * })
     */
    private $tenant;


    /**
     * Set namedv
     *
     * @param string $namedv
     * @return Linhvuc
     */
    public function setNamedv($namedv)
    {
        $this->namedv = $namedv;

        return $this;
    }

    /**
     * Get namedv
     *
     * @return string 
     */
    public function getNamedv()
    {
        return $this->namedv;
    }

    /**
     * Set motalinhvuc
     *
     * @param string $motalinhvuc
     * @return Linhvuc
     */
    public function setMotalinhvuc($motalinhvuc)
    {
        $this->motalinhvuc = $motalinhvuc;

        return $this;
    }

    /**
     * Get motalinhvuc
     *
     * @return string 
     */
    public function getMotalinhvuc()
    {
        return $this->motalinhvuc;
    }

    /**
     * Get idlinhvuc
     *
     * @return integer 
     */
    public function getIdlinhvuc()
    {
        return $this->idlinhvuc;
    }

    /**
     * Set tenant
     *
     * @param \Acme\PermissionBundle\Entity\Tenant $tenant
     * @return Linhvuc
     */
    public function setTenant(\Acme\PermissionBundle\Entity\Tenant $tenant = null)
    {
        $this->tenant = $tenant;

        return $this;
    }

    /**
     * Get tenant
     *
     * @return \Acme\PermissionBundle\Entity\Tenant 
     */
    public function getTenant()
    {
        return $this->tenant;
    }
}
