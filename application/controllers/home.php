<?php

require_once APPPATH . 'libraries/facebook/facebook.php';

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

    

}
