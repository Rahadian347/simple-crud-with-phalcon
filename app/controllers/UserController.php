<?php
namespace Application\Controllers;
use Phalcon\Http\Response;
use Phalcon\Mvc\View;
use Application\Models\User;

class UserController extends ControllerBase
{  
  
   public function beforeExecuteRoute($dispatcher)
    {
       parent::beforeExecuteRoute($dispatcher);
    }
  
   public function indexAction() {    
      $this->view->disable(); 
     echo 'user index'; 
         
   }
   public function createAction() {
     
      // echo 'ayam';
      $user = new User();
      $response = new Response();
      $user->nama_user = $this->request->getPost("txt_nama");
      $user->email_user = $this->request->getPost("txt_email");
      if (!$user->save()) {
         echo "Gagal Disimpan";
      }
      else {
        
         $this->response->redirect('/');
          $this->view->disable();
      }     
         
   }
   public function viewdataAction() {
         $user = User::find();
         $this->view->data=$user;
   }
   
   public function editAction($id) {
      $id = $this->dispatcher->getParam('id');

       if (!$id) {
            $this->view->disable();
            echo 'nothing';
      }
      $user = User::findFirstByidUser($id);

       
      $this->view->id = $user->id_user;
      $this->view->email = $user->email_user;
      $this->view->nama = $user->nama_user;
      
   }
   public function updateAction() {
      $id = $this->request->getPost("txt_id");
      $user = User::findFirstByidUser($id);
      $user->nama_user = $this->request->getPost("txt_nama");
      $user->email_user = $this->request->getPost("txt_email");

      if (!$user->save()) {         
         echo "Gagal Disimpan";
      }
      else {
         $this->response->redirect('viewdata/');
         $this->view->disable();
      }
   }
   public function deleteAction($id) {
      $id = $this->dispatcher->getParam('id');
      $user = User::findFirstByidUser($id);      
      if (!$user->delete()) {
         echo "Gagal Hapus Data";
      }
      else {
         $this->response->redirect('viewdata/');
          $this->view->disable();
      }
   }
}