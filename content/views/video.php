
	
<?
$request = explode('/', $_SERVER['REQUEST_URI']);
    use React\Core\Store;
    Store::Prepare('SELECT * FROM video WHERE id = ?');
    Store::BindValue(1,$request[2], PDO::PARAM_INT);
    Store::Execute();
    $data = Store::Fetch();

?>
<div class="collection-group">
<div class="top-collection-group">
        <div class="name-collections"><?=$data['name']?></div>
            </div>



<div class="artplayer-app"></div>
<script>



var art = new Artplayer({
    container: '.artplayer-app',
    url: '<?=$data['url']?>',
    volume: 0.5,
    isLive: false,
    muted: false,
    autoplay: false,
    pip: true,
    autoSize: true,
    screenshot: true,
    setting: true,
    loop: true,
    flip: true,
    playbackRate: true,
    aspectRatio: true,
    fullscreen: true,
    fullscreenWeb: true,
    mutex: true,
    theme: '#ffad00'
});

</script>








<div class="top-collection-group flex">
        <div class="name-collections ">Описание</div>
        <div class="desc-collections "><?=$data['desk']?></div>
        <div class="name-collections ">Комментарии</div>
 </div>

   


</div>