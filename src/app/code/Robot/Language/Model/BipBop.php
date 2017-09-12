<?php
/**
 *
 */
namespace Robot\Language\Model;


/**
 * Language feature
 */
class BipBop 
{
    /**
     * key Machine language
     *
     * @var string[]
     */
    protected $_bitLanguage = ['bip', 'bop'];

    /**
     * Get identities
     *
     * @return array
     */
    public function convertString($string)
    {
        if(!is_string($string)){
            return [];
        }

        $binaryArray = array_map(function($word){
                return $this->_bitLanguage;
            }, str_split($string));

        return $binaryArray;
    }
}
