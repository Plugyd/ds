<?php
use React\Core\Controller;
use React\Core\View;
use React\Core\Router;
use React\Core\Store;

class ControllerVideo extends Controller
{

	public function index()
    {
        $request = explode('/', $_SERVER['REQUEST_URI']);

    
        Store::Prepare('SELECT * FROM video WHERE id = ?');
        Store::BindValue(1, $request[2], PDO::PARAM_INT);
        Store::Execute();
        $data = Store::Fetch();
		$settings = array (
			'Title'       =>  $data['name']. '| Sakhalin Do',
			'Description' => '',
			'Keywords'    => ''
		);

		$viewway = 'content/views/video.php';
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
