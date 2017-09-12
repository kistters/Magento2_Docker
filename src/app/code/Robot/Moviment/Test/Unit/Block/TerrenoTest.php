<?php
/**
 * Copyright © 2013-2017 Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */

namespace Robot\Moviment\Test\Unit\Block;

use Robot\Moviment\Block\Terreno;

class TerrenoTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @var \Robot\Moviment\Block\Terreno
     */
    protected $terrenoBlock;

    /**
     * @var \Magento\Framework\View\Element\Template\Context|\PHPUnit_Framework_MockObject_MockObject
     */
    protected $contextMock;

    /**
     * {@inheritDoc}
     */
    protected function setUp()
    {
        $this->contextMock = $this->getMockBuilder('Magento\Framework\View\Element\Template\Context')
            ->disableOriginalConstructor()
            ->getMock();

        $this->terrenoBlock = new Terreno(
            $this->contextMock
        );
    }

    /**
     * @return void
     */
    public function testScope()
    {
        $this->assertTrue($this->terrenoBlock->isScopePrivate());
    }

    /**
     * @return void
     */
    public function testGetSpaceWithWalkEqual2()
    {
        $this->assertEquals('The Robot walk 2 space(s)',$this->terrenoBlock->getSpaceOf(2));
    }
}
