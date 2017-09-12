<?php
/**
 *
 */
namespace Robot\Moviment\Block;

use Magento\Framework\View\Element\Template;

/**
 * Main Moviment block
 */
class Terreno extends Template
{
    /**
     * @param Template\Context $context
     * @param array $data
     */
    public function __construct(Template\Context $context, array $data = [])
    {
        parent::__construct($context, $data);
        $this->_isScopePrivate = true;
    }

    /**
     * Returns sapces walked
     *
     * @param int $walk
     * @return string
     */
    public function getSpaceOf($walk)
    {
        return __('The Robot walk %1 space(s)', $walk);
    }
}
