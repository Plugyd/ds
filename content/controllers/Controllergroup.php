<?php
use React\Core\Controller;
use React\Core\View;
use React\Core\Router;
use React\Core\Store;

class ControllerGroup extends Controller
{
	public function index()
    {


		$request = explode('/', $_SERVER['REQUEST_URI']);
		Store::Prepare('SELECT * FROM groups WHERE id=?');
		Store::BindValue(1,$request[2], PDO::PARAM_INT);
		Store::Execute();
		$data = Store::Fetch();
		
		$settings = array (
			'Title'       => $data['name'].' | Sakhalin Do',
			'Description' => '',
			'Keywords'    => ''
		);

		$viewway = 'content/views/group.php';
		$appearance = 'template.php';	
		$access = '0';

		View::build($settings, $viewway, $appearance,array($data),$access);
    }
}
?>
