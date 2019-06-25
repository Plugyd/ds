

<div class="collection-group">
<div class="top-collection-group">
        <div class="name-collections">Категории</div>
        <input type="text" class="group-search" id="autocomplete" placeholder="Название категории...">
    </div>


<?
    use React\Core\Store;
    Store::Prepare('SELECT * FROM groups  ORDER BY id DESC LIMIT ?, ? ');
    Store::BindValue(1,0, PDO::PARAM_INT);
    Store::BindValue(2,15, PDO::PARAM_INT);
    Store::Execute();
    $counts = Store::RowCount();
    $data = Store::FetchAll();
?>


<? foreach ($data as $groups) :?>
<div class="group" id="<?=$groups['id']?>">
        <div class="group-inner">
            <div class="group-img">
                <img src="<?=$groups['img']?>" alt="">
            </div>
            <div class="group-descriptions">
                <a href="/videos/5" class="group-name"><?=$groups['name']?></a>

            </div> 
        </div>
    </div>
<? endforeach;?>


   


</div>