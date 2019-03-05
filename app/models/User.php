<?php
namespace Application\Models;
use Phalcon\Db\Adapter\Pdo\Mysql as MysqlPdo;

use Phalcon\Mvc\Model;

class User extends Model {
//     public function initialize()
//     {
//         $this->di->set(
//     'dbMysql',
//     function () {
//         return new MysqlPdo(
//             [
//                 'host'     => 'localhost',
//                 'username' => 'root',
//                 'password' => 'watchman',
//                 'dbname'   => 'test',
//             ]
//         );
//     }
// );
//         $this->setConnectionService('dbMysql');
//     }

    
    
    public $id_user; // field id_user dalam tabel
    public $nama_user; // field nama_user dalam tabel
    public $email_user;// field email_user dalam tabel

}

