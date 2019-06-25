
<!-- TODO оптимизация изображений -->
<div class="header-group-record">
    <div class="header-group-record-img">
        <img src="<?=$data[0]['img']?>" alt="">
        <div class="header-group-record-name"><?=$data[0]['name']?></div>
    </div>
</div>
<div class="do_main_result-all">
    <div class="collection-group-record">
        <div class="top-collection-group">
            <div class="name-collections"><?=$data[0]['name']?></div>
            <input type="text" class="group-search" id="autocomplete" placeholder="Поиск по сообществу...">
        </div>
        <div class="collection-record">
        <?
        use React\Core\Store;
        Store::Prepare('SELECT * FROM records WHERE group_id= ? ORDER BY id DESC LIMIT ?, ? ');
        Store::BindValue(1,$data[0]['id'], PDO::PARAM_INT);
        Store::BindValue(2,0, PDO::PARAM_INT);
        Store::BindValue(3,25, PDO::PARAM_INT);
        Store::Execute();
        $rec = Store::FetchAll();
        ?>


        <? foreach ($rec as $record) :?>

        <?
        Store::Prepare('SELECT id FROM records WHERE (liked_user LIKE ?) and (group_id = ?) and (id = ?)');
        Store::BindValue(1,'%'.$_SESSION['user']['id'].';%', PDO::PARAM_INT);
        Store::BindValue(2,$data[0]['id'], PDO::PARAM_INT);
        Store::BindValue(3,$record['id'], PDO::PARAM_INT);
        Store::Execute();
        $counts = Store::RowCount();
        ?>
            <div class="record" id="record-<?=$record['id']?>">
                <div class="record-top">
                    <img src="<?=$record['img']?>" alt="">
                </div>
                <div class="record-bottom">
                    <div class="record-bottom-rigth">
                        <div class="record-bottom-rigth-img"> <img src="<?=$record['img']?>" alt=""></div>
                        <div class="record-like">
                            <div class="record-like-top"><i class="far fa-heart <? if ($counts == 1) echo 'like-active'?> " id="likerecord" id_record="<?=$record['id']?>" id_group="<?=$data[0]['id']?>"  ></i></div>
                            <div class="record-like-bottom"><?=$record['likes']?></div>
                        </div>
                    </div>
                    <div class="record-bottom-left">
                        <div class="record-bottom-rigth-name"><?=$record['title']?></div>
                        <div class="record-bottom-rigth-text"><?=$record['text']?></div>
                    </div>
                </div>
                <div class="bt-open-record-all">
                    <div class="bt-open-record">Открыть полностью</div>
                </div>
            </div>
            <? endforeach;?>
        </div>
    </div>
    <div class="collections-direction">
        <div class="direction">
            <div class="direction-img">
                <img src="<?=$data[0]['img']?>" alt="">
            </div>
            <div class="direction-bt">
                <a href="#" roup="<?=$groups['id']?>" class="bt">Подписаться</a>
            </div>
        </div>
        <div class="subscribers">
            <div class="subscribers-sub">
                <div class="subscribers-sub-text">Подписчики <?=$data[0]['people']?></div>
            </div>
            <div class="subscribers-img">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
                <img src="<?=$data[0]['img']?>" alt="">
            </div>
        </div>
        <div class="desc">
            <div class="desc-sub">
                <div class="desc-sub-text">Описание сообщества</div>
            </div>
            <div class="desc-text">
                <div class="desc-text-text">
                    Товарищи! реализация намеченных плановых заданий позволяет
                    оценить значение существенных финансовых и административных условий. Разнообразный и богатый
                    опыт дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и
                    модернизации систем массового участия.
                </div>
            </div>
        </div>
    </div>
</div>