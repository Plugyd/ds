<?php
use React\Core\Controller;
use React\Core\View;
use React\Core\Router;

class ControllerVideos extends Controller
{
	public function index()
    {
		$settings = array (
			'Title'       => 'Video | Sakhalin Do',
			'Description' => '',
			'Keywords'    => ''
		);

		$viewway = 'content/views/videos.php';
		$appearance = 'template.php';
		$access = '0';
		
		/* 
		0: Полный доступ
		1: Только авторизованным
		2: Гостям
		#: Привилегированный 
		*/

		View::build($settings, $viewway, $appearance,array(),$access);
    }
}
?>
