<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 14/09/16
 * Time: 13:43
 */
use Phalcon\Mvc\Router;
$router = new Router( false );
$router->mount( new \Application\Router\MainRouter() );
$router->mount( new \Application\Router\UserRouter() );
return $router;


