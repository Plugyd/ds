<header>
    <div class="do_header_main">
        <div class="do_header_main-all">
            <a href="/" class="do_header_name">DO<strong>.Sakh</strong></a>
        </div>


<?
use React\Core\Store;  
 use React\Core\User;  

?>



        <? if (User::Check() == false) : ?>
        <div class="do-auth">
            <a href="/auth" class="do-auth-bt">Войти</a>
            <a href="/reg" class="do-reg-bt">Регистрация</a>
        </div>
        <? else :?>
        <div class="do-user-header">
            <div  class="do-user-header-login"><div class="login"><?=$_SESSION['user']['login']?></div></div>
            <div  class="do-user-header-img"><img src="<?=$_SESSION['user']['img']?>" alt=""></div>
            <a href="/logout" class="do-logout-bt">Выйти</a>
        </div>
        
        <? endif; ?>

    </div>
</header>