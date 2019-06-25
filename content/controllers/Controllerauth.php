<?php
use React\Core\Controller;
use React\Core\View;
use React\Core\Router;

class ControllerAuth extends Controller
{
	public function index()
    {
		$settings = array (
			'Title'       => 'Вход | Sakhalin Do',
			'Description' => '',
			'Keywords'    => ''
		);

		$viewway = 'content/views/auth.php';
		$appearance = 'template.php';	
		$access = '2';

		View::build($settings, $viewway, $appearance,array(),$access);
    }
}
?>
