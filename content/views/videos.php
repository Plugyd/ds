

<?
$request = explode('/', $_SERVER['REQUEST_URI']);
use React\Core\Store;
Store::Prepare('SELECT * FROM cat WHERE num = ?');
Store::BindValue(1,$request[2], PDO::PARAM_INT);
Store::Execute();
$data = Store::Fetch();
?>

<div class="collection-group">
<div class="top-collection-group">
        <div class="name-collections"><?=$data['name']?></div>
        <input type="text" class="group-search" id="autocomplete" placeholder="Название сообщества...">
    </div>

    <?
  
    Store::Prepare('SELECT * FROM video  WHERE cat = ? ORDER BY id DESC LIMIT ?, ? ');
    Store::BindValue(1,$request[2], PDO::PARAM_INT);
    Store::BindValue(2,0, PDO::PARAM_INT);
    Store::BindValue(3,15, PDO::PARAM_INT);
    Store::Execute();
    $counts = Store::RowCount();
    $data = Store::FetchAll();
?>


<? foreach ($data as $groups) :?>
<div class="group" id="<?=$groups['id']?>">
        <div class="group-inner">
            <div class="group-img">
                <img src="<?=$groups['preview']?>" alt="">
            </div>
            <div class="group-descriptions">
                <a href="/video/<?=$groups['id']?>" class="group-name"><?=$groups['name']?></a>

            </div> 
        </div>
    </div>
<? endforeach;?>



</div>