<?php
/**
 *
 */
namespace Robot\Language\Test\Model\Unit\Model;

use Magento\Framework\TestFramework\Unit\Helper\ObjectManager;

class BipBopTest extends \PHPUnit_Framework_TestCase
{
    /**
     * @var \Robot\Language\Model\BipBop|\PHPUnit_Framework_MockObject_MockObject
     */
    protected $_model;

    protected function setUp()
    {
        $this->_model = (new ObjectManager($this))->getObject('Robot\Language\Model\BipBop');
    }

    public function testConvertStringSendingStringToReturnArray()
    {
        $this->assertTrue(is_array($this->_model->convertString('bla bla bla')));
    }

    public function testConvertStringSendingArrayToReturnArray()
    {
        $this->assertEquals([],$this->_model->convertString(['bla bla bla']));
    }
}
