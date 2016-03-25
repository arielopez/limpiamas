<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of mi_pagina
 *
 * @author alberto
 */
class mi_pagina extends fs_controller
{
    public $variable1;
    
    public function __construct() {
        parent::__construct(__CLASS__, 'mi pagina', 'informes');
        
    }
    protected function private_core() {
        $this->variable1 = array(
            'manzanas'=> array('color'=>'verde','peso'=>200),
            'peras'=> array('color'=>'amarilla','peso'=>200),
            'uvas'=> array('color'=>'tintas','peso'=>200),
            'pinhas'=> array('color'=>'marron','peso'=>200),
            );
    }
    
}
