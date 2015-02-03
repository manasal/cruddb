<?php
include ('../modules/application/src/application/models/getUsers.php');
$filename = $config['filename'];

switch($request['action'])
{
    case '200':
        echo "TODO OK";
        return;
    break;
        
    case '404':  
        $usuarios = getUsers($filename);
        include('../modules/application/src/application/views/error/error.phtml');
    break;
}











