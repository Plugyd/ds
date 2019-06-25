

<div class="collection-group">
<div class="top-collection-group">
        <div class="name-collections">Категории</div>
        <input type="text" class="group-search" id="autocomplete" placeholder="Название сообщества...">
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





   


</div>