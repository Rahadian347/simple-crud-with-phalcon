<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */
namespace Application\Router;
use Phalcon\Mvc\Router\Group;
class UserRouter extends Group
{
    public function initialize()
    {
        $this->setPaths([
            'namespaces' => 'Application\\Controllers',
            'controller'=>'user',
            // 'module' => 'user'
        ]);
         $this->setPrefix('/');
        $this->add(
            '',
            [
                'action' => 'create'
            ]
        );
        $this->add(
            'viewdata',
            [
                'action' => 'viewdata'
            ]
        );
        $this->addGet(
            'edit/{id}',
            [
                'action' => 'edit'
            ]
        );
        $this->add(
            'update',
            [
                'action' => 'update'
            ]
        );
        $this->add(
            'hapus/{id}',
            [
                'action' => 'delete'
            ]
        );
    }
    

}

