<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

use Application\Bootstrap;

include_once __DIR__ . '/../bootstrap/autoloader.php';
include_once BASE_DIR . 'app/library/Bootstrap.php';

$bootstrap = new Bootstrap( 'normal', 'app' );

echo $bootstrap->run();

