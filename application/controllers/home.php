<?php

//require_once APPPATH . 'libraries/facebook/facebook.php';

class Home extends Frontend_Controller {

    function __construct() {
        parent::__construct();
        $this->load->library("pagination");
        if ($this->uri->segment(3) != NULL) {
            $uriii = $this->uri->segment(3);
        }
    }

    function index() {
        
    }
    
   function integerToString($num, $b=64) {
          $base='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
          $r = $num  % $b ;
          $res = $base[$r];
          $q = floor($num/$b);
          while ($q) {
            $r = $q % $b;
            $q =floor($q/$b);
            $res = $base[$r].$res;
          }
          echo $res;
    }
    
}
