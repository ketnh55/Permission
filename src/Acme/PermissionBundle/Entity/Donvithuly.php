<?php

namespace Acme\PermissionBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Donvithuly
 *
 * @ORM\Table(name="donvithuly")
 * @ORM\Entity
 */
class Donvithuly
{
    /**
     * @var string
     *
     * @ORM\Column(name="NameDonViThuLy", type="string", length=45, nullable=false)
     */
    private $namedonvithuly;

    /**
     * @var integer
     *
     * @ORM\Column(name="idDonViThuLy", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddonvithuly;
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
     * Set namedonvithuly
     *
     * @param string $namedonvithuly
     * @return Donvithuly
     */
    public function setNamedonvithuly($namedonvithuly)
    {
        $this->namedonvithuly = $namedonvithuly;

        return $this;
    }

    /**
     * Get namedonvithuly
     *
     * @return string 
     */
    public function getNamedonvithuly()
    {
        return $this->namedonvithuly;
    }

    /**
     * Get iddonvithuly
     *
     * @return integer 
     */
    public function getIddonvithuly()
    {
        return $this->iddonvithuly;
    }

    /**
     * Set tenant
     *
     * @param \Acme\PermissionBundle\Entity\Tenant $tenant
     * @return Donvithuly
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
